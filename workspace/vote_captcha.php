<?php
  define('DOCROOT', str_replace ('workspace', '', rtrim(dirname(__FILE__), '\\/')));
  define('DOMAIN', rtrim(rtrim($_SERVER['HTTP_HOST'], '\\/') . dirname($_SERVER['PHP_SELF']), '\\/'));

  require(DOCROOT . '/symphony/lib/boot/bundle.php');
  require_once(CORE . '/class.administration.php');
  require_once('recaptchalib.php');
  $privatekey = "6Ldd5vsSAAAAADYl8s1SP1CJVoTZj9Xpj7TvpH4C";
  $voterkey = $_POST["0vxv7fkmnp"];
  $votevalue = $_POST["votevalue"];
  $sym = Symphony::Engine();

  $return_array = "";

  header('Content-Type: application/json');

  if(isset($voterkey) && !is_null($voterkey) && !empty($voterkey))
  {
    if(isset($votevalue) && !is_null($votevalue) && !empty($votevalue))
    {
      if(canVoteToday($voterkey))
      {
        $resp = recaptcha_check_answer ($privatekey,
            $_SERVER["REMOTE_ADDR"],
            $_POST["recaptcha_challenge_field"],
            $_POST["recaptcha_response_field"]);


        if (!$resp->is_valid) 
        {
          echo processReturn("404");
        }
        else 
        {
          logVote($voterkey, $votevalue);
          echo processReturn("200");
          //return ok vote logged.
        }
      }
      else
      {
        echo processReturn("408");
        //return come back tomorrow
      }
    } 
    else 
    {
      echo processReturn("409");
        //return error.. select an option
    }
  }
  else 
  {
      echo processReturn("200");
      //return ok.. something subversive going on here... should have an id.
  }


  function processReturn($returnValue){
    $array = array(
        "returnValue" => $returnValue
    );

    return json_encode($array);
  }


  function getIPAddress()
  {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        return $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        return $_SERVER['REMOTE_ADDR'];
    }
  }


  function logVote($voter_id, $value)
  {
    $query = sprintf("INSERT INTO vote_2014 (voter_id, vote_date, vote_datetime, vote_value, ip_address, user_agent, cookie, referer) VALUES ('%s', NOW(), NOW(), '%s', '%s', '%s', '%s', '%s')",
                      MySQL::cleanValue($voter_id),
                      MySQL::cleanValue($value),
                      MySQL::cleanValue(getIPAddress()),
                      MySQL::cleanValue($_SERVER['HTTP_USER_AGENT']),
                      MySQL::cleanValue($_SERVER["HTTP_COOKIE"]),
                      MySQL::cleanValue($_SERVER["HTTP_REFERER"]));

    //Log it to the database
    Symphony::Database()->query($query, "ASSOC");



    //Log it to a flatfile
    file_put_contents(DOCROOT . '/workspace/2014votes.txt', sprintf("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n",
                      $voter_id,
                      $value,
                      date("Y-m-d", strtotime("today")),
                      date("Y-m-d H:i:s.u"),
                      getIPAddress(),
                      $_SERVER['HTTP_USER_AGENT'],
                      $_SERVER["HTTP_COOKIE"],
                      $_SERVER["HTTP_REFERER"]), FILE_APPEND | LOCK_EX);
    
    setLastVoteDate($voter_id);
  }

  function canVoteToday($voter_id)
  {
    $lastVoteDate = lastVoteDate($voter_id);
    if($lastVoteDate == null) return true;
    return date("y-m-d", strtotime($lastVoteDate)) < date("y-m-d", strtotime("today"));
  }

  function setLastVoteDate($voter_id)
  {
    $query = sprintf("UPDATE vote_status_2014 SET last_vote_date = NOW() WHERE voter_id = '%s'", 
      MySQL::cleanValue($voter_id));


    if(lastVoteDate($voter_id) == null) {
      $query = sprintf("INSERT INTO vote_status_2014 VALUES('%s', NOW())", 
        MySQL::cleanValue($voter_id));
    }
    

    Symphony::Database()->query($query, "ASSOC");
  }

  function lastVoteDate($voter_id)
  {
      $query = "SELECT * FROM vote_status_2014 WHERE voter_id = '" . MySQL::cleanValue($voter_id) . "'";
      return Symphony::Database()->fetchVar("last_vote_date", 0, $query);
  }
  ?>