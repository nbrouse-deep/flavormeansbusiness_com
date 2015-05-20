<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventvotes_new extends SectionEvent{

		public $ROOTELEMENT = 'votes-new';

		public $eParamFILTERS = array(
			'xss-fail'
		);

		public static function about(){
			return array(
				'name' => 'Votes: New',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-26T17:41:31+00:00',
				'trigger-condition' => 'action[votes-new]'
			);
		}

		public static function getSource(){
			return '14';
		}

		public static function allowEditorToParse(){
			return false;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;votes-new result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/votes-new></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;votes-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/votes-new></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;votes-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/votes-new></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="20971520" />
  &lt;label>First Name
    &lt;input name="fields[first-name]" type="text" />
  &lt;/label>
  &lt;label>Last Name
    &lt;input name="fields[last-name]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;label>Date
    &lt;input name="fields[date]" type="text" />
  &lt;/label>
  &lt;input name="fields[entry]" type="hidden" value="..." />
  &lt;input name="action[votes-new]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://minors.dev/success/" /></code></pre>';
		}

		public function load(){
            if(isset($_POST['action']['votes-new'])) {
                $tableDates = 'sym_entries_data_69';
                $tableEmails = 'sym_entries_data_68';

                $userEmail = mysql_real_escape_string($_POST['fields']['email']);

                $rows = Symphony::Database()->fetch("select $tableDates.date as date, $tableEmails.value as email from $tableDates join $tableEmails on $tableDates.id = $tableEmails.id where date($tableDates.date) = curdate() and $tableEmails.value='$userEmail'");

                if (count($rows) > 0) {
                    $result = new XMLElement( $this->ROOTELEMENT );

                    $result->setAttribute( 'result', 'error' );
                    $result->appendChild( new XMLElement( 'message', 'Sorry, you may only vote once per day.' ) );

                    foreach ($rows as $row) {
                        $vote = new XMLElement( 'vote' );
                        $vote->setAttribute( 'email', $row['email'] );
                        $vote->setAttribute( 'date', $row['date'] );

                        $result->appendChild( $vote );
                    }

                    return $result;
                }
                else {
                    return $this->__trigger();
                }
            }

		}
	}
