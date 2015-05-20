<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/masterfull.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />


<xsl:template match="/data"><link rel="stylesheet" href="{$workspace}/css/custom.css" />
<link rel="stylesheet" href="{$workspace}/css/style.css" />


   <!--Desktop Layout -->
   <div class="desktop-only">
   <div style="min-height:500px;" class="battle-for-bocuse">
   <h1>Battle for bocuse d'or with grand prize winner</h1>
   <img class="floatleft" src="{$workspace}/img/battle-for-bocuse.jpg" />
   <div style="width:279px;" class="floatleft bocuse-right"><p style="font-size:29px; font-weight:normal;">Congratulations to<br />  our battle winner,<br /> Chef Kurt Kwiatkowski<br /> from Lasing, Michigan.</p>
   <p style="color:#555555; font-style: normal; margin-top:5px;font-size:21px;">His flavorful Catalan Seafood Stew recipe has earned him a trip to Lyon, France to watch the prestegious Bocuse d'Or competition.</p>  
   </div>
   </div>
   <div class="contest-pieces">
   <!-- [BEGIN] Ajax Poll -->
<form class='ajax-poll-form' method="POST" tid='demo1' action='{$workspace}/vote_captcha.php'>

  <!-- [BEGIN] Title -->
  <div class='ajax-poll-title'>
Explore all of the wonderful recipes that made it to the final battle.
  </div>
  <!-- [END] Title -->

  <!-- [BEGIN] Item 1 -->
  <div class='ajax-poll-item' tid='recipe1'>
    <div class='ajax-poll-item-caption'>
      <p>Chicken Noodle</p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Daigneault's Duck Dashi Noodle Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Duck Dashi Noodle Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 1 -->

  <!-- [BEGIN] Item 2 -->
  <div class='ajax-poll-item' tid='recipe2'>
    <div class='ajax-poll-item-caption'>
      <p>
      Chowder (Excluding Clam)
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Kwiatkowski's Catalan Seafood Stew
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Catalan Seafood Stew.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 2 -->

  <!-- [BEGIN] Item 3 -->
  <div class='ajax-poll-item' tid='recipe3'>
    <div class='ajax-poll-item-caption'>
     <p>
      Chowder
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Herbert's Bacon Dashi Broth with Clams and Potatoes
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Bacon Dashi with Clams and Potatoes.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 3 -->

  <!-- [BEGIN] Item 4 -->
  <div class='ajax-poll-item' tid='recipe4'>
    <div class='ajax-poll-item-caption'>
     <p>
      French Onion
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Jaye's Beef Short Rib French Onion Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Beef Short Rib French Onion Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 4 -->

  <!-- [BEGIN] Item 6 -->
  <div class='ajax-poll-item' tid='recipe6'>
    <div class='ajax-poll-item-caption'>
      <p>
      Potato Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Brown's Potato Tomatillo Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Potato Tomatillo Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 6 -->

  <!-- [BEGIN] Item 7 -->
  <div class='ajax-poll-item' tid='recipe7'>
    <div class='ajax-poll-item-caption'>
      <p>
      Seafood Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Sockrider's Crab and Brie Bisque Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Crab and Brie Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 7 -->

  <!-- [BEGIN] Item 8 -->
  <div class='ajax-poll-item' tid='recipe8'>
    <div class='ajax-poll-item-caption'>
      <p>
      Tortilla Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Connolly's Essence of Tomato Roasted Fennel Tortilla Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Essence of Tomato with Roast Fennel and Tortilla Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 8 -->

  <!-- [BEGIN] Item 9 -->
  <div class='ajax-poll-item' tid='recipe9'>
    <div class='ajax-poll-item-caption'>
     <p>
      Vegetable Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Berry's Roasted Mango Sweet Potato Bisque
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Roasted Mango Sweet Potato Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 9 -->

  <!-- [BEGIN] Item 10 -->
  <div class='ajax-poll-item' tid='recipe10'>
    <div class='ajax-poll-item-caption'>
      <p>
      Vegetable Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Durkee's Grilled Portabella Barley Soup with Parmesan Crackers
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Grilled Portabella and Barley Soup with Parmesan Crackers.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 10 -->
</form>
<!-- [END] Ajax Poll -->
<form class='ajax-poll-form' method="POST" tid='demo1' action='{$workspace}/vote_captcha.php' style="margin-top:30px;">
  <!-- [BEGIN] Title -->
  <div class='ajax-poll-title'>
  Discover Chef Steve's original twists on each category.
  </div>
  <!-- [END] Title -->

  <!-- [BEGIN] Item 1 -->
  <div class='ajax-poll-item' tid='recipe1'>
    <div class='ajax-poll-item-caption'>
      <p>Chicken Noodle</p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Chicken Ramen
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Chicken Ramen.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 1 -->

  <!-- [BEGIN] Item 2 -->
  <div class='ajax-poll-item' tid='recipe2'>
    <div class='ajax-poll-item-caption'>
      <p>
      Chowder (Excluding Clam)
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Chorizo Corn Chowder 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Chorizo Corn Chowder.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 2 -->

  <!-- [BEGIN] Item 3 -->
  <div class='ajax-poll-item' tid='recipe3'>
    <div class='ajax-poll-item-caption'>
     <p>
      Chowder
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Clam Chowder with Miso
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Clam Chowder with Miso.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 3 -->

  <!-- [BEGIN] Item 4 -->
  <div class='ajax-poll-item' tid='recipe4'>
    <div class='ajax-poll-item-caption'>
     <p>
      French Onion
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Bourbon Street French Onion 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Bourbon Street French Onion.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 4 -->
   <!-- [BEGIN] Item 5 -->
  <div class='ajax-poll-item' tid='recipe5'>
    <div class='ajax-poll-item-caption'>
      <p>
      Minestrone
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Roasted Garlic and Sundried Tomato 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Roasted Garlic and Sundried Tomato Minestorne.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 5 -->

  <!-- [BEGIN] Item 6 -->
  <div class='ajax-poll-item' tid='recipe6'>
    <div class='ajax-poll-item-caption'>
      <p>
      Potato Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Truffled Potato
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Truffled Potato Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 6 -->

  <!-- [BEGIN] Item 7 -->
  <div class='ajax-poll-item' tid='recipe7'>
    <div class='ajax-poll-item-caption'>
      <p>
      Seafood Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Thai Style Lobster Bisque 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Thai Style Lobster Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 7 -->

  <!-- [BEGIN] Item 8 -->
  <div class='ajax-poll-item' tid='recipe8'>
    <div class='ajax-poll-item-caption'>
      <p>
      Tortilla Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Three Chile Tortilla Soup 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Three Chile Tortilla Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 8 -->

  <!-- [BEGIN] Item 9 -->
  <div class='ajax-poll-item' tid='recipe9'>
    <div class='ajax-poll-item-caption'>
     <p>
      Vegetable Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Butternut Squash Bisque 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Butternut Squash Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 9 -->

  <!-- [BEGIN] Item 10 -->
  <div class='ajax-poll-item' tid='recipe10'>
    <div class='ajax-poll-item-caption'>
      <p>
      Vegetable Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Super Food Vegetable Soup 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Super Food Vegetable Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 10 -->

</form>
<!-- End Second Form -->
   </div>
   <div class="challengerprofile"><img class="floatleft" src="{$workspace}/img/chef-steve.jpg" />
   <div style="max-width:100%;"><h2><a style="color:#BE3636; font-family:'Sorts Mill Goudy',georgia,serif; font-size:29px; font-style: italic; text-decoration: underline;" href="/blog">See more of Chef Steve’s<br /> soup inspirations on our blog</a></h2>
   </div>
   </div>
   </div>
  <!-- End Desktop Layout -->
  
  <!--Mobile Layout -->
  <div class="mobile-only">
   <!--Start Mobile Battle for Bocuse -->
   <div class="mobile-battleforbocuse">
   <h1>Battle for bocuse d'or with grand prize winner</h1>
   <img src="{$workspace}/img/battle-for-bocuse.jpg" />
  </div>
  <!--End Mobile Battle for Bocuse -->
  <div class="mobile-trip">
  <p>Congratulations to our battle winner, Chef Kurt Kwiatkowski from Lansing, Michigan <br /><span class="mobile-entries">His flavorful Catalan Seafood Stew recipe has earned him a trip to Lyon, France to watch the prestigious Bocuse d'Or competition.</span></p>
 </div>

   <div class="challengerprofile tablet-only"><img src="{$workspace}/img/chef-steve.jpg" /><h2><a style="text-align:center;color:#BE3636; font-family:'Sorts Mill Goudy',georgia,serif; font-size:29px; font-style: italic; text-decoration: underline;" href="/blog">See more of Chef Steve’s soup inspirations on our blog</a></h2></div>
   <div class="challengerprofile hidden-tablet"><img src="{$workspace}/img/chef-steve-prof-bio.png" />
   <h2><a style="text-align:center; color:#BE3636; font-family:'Sorts Mill Goudy',georgia,serif; font-size:29px; font-style: italic; text-decoration: underline;" href="/blog">See more of Chef Steve’s soup inspirations on our blog</a></h2></div>
   <a name="mobileenter"></a>
<div class="contest-pieces">
  <!-- [BEGIN] Ajax Poll -->
<form class='ajax-poll-form' method="POST" tid='demo1' action='{$workspace}/vote_captcha.php'>

  <!-- [BEGIN] Title -->
  <div class='ajax-poll-title'>
Explore all of the wonderful recipes that made it to the final battle.
  </div>
  <!-- [END] Title -->

  <!-- [BEGIN] Item 1 -->
  <div class='ajax-poll-item' tid='recipe1'>
    <div class='ajax-poll-item-caption'>
      <p>Chicken Noodle</p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Daigneault's Duck Dashi Noodle Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Duck Dashi Noodle Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 1 -->

  <!-- [BEGIN] Item 2 -->
  <div class='ajax-poll-item' tid='recipe2'>
    <div class='ajax-poll-item-caption'>
      <p>
      Chowder (Excluding Clam)
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Kwiatkowski's Catalan Seafood Stew
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Catalan Seafood Stew.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 2 -->

  <!-- [BEGIN] Item 3 -->
  <div class='ajax-poll-item' tid='recipe3'>
    <div class='ajax-poll-item-caption'>
     <p>
      Chowder
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Herbert's Bacon Dashi Broth with Clams and Potatoes
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Bacon Dashi with Clams and Potatoes.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 3 -->

  <!-- [BEGIN] Item 4 -->
  <div class='ajax-poll-item' tid='recipe4'>
    <div class='ajax-poll-item-caption'>
     <p>
      French Onion
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Jaye's Beef Short Rib French Onion Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Beef Short Rib French Onion Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 4 -->

  <!-- [BEGIN] Item 6 -->
  <div class='ajax-poll-item' tid='recipe6'>
    <div class='ajax-poll-item-caption'>
      <p>
      Potato Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Brown's Potato Tomatillo Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Potato Tomatillo Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 6 -->

  <!-- [BEGIN] Item 7 -->
  <div class='ajax-poll-item' tid='recipe7'>
    <div class='ajax-poll-item-caption'>
      <p>
      Seafood Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Sockrider's Crab and Brie Bisque Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Crab and Brie Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 7 -->

  <!-- [BEGIN] Item 8 -->
  <div class='ajax-poll-item' tid='recipe8'>
    <div class='ajax-poll-item-caption'>
      <p>
      Tortilla Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Connolly's Essence of Tomato Roasted Fennel Tortilla Soup
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Essence of Tomato with Roast Fennel and Tortilla Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 8 -->

  <!-- [BEGIN] Item 9 -->
  <div class='ajax-poll-item' tid='recipe9'>
    <div class='ajax-poll-item-caption'>
     <p>
      Vegetable Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Berry's Roasted Mango Sweet Potato Bisque
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Roasted Mango Sweet Potato Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 9 -->

  <!-- [BEGIN] Item 10 -->
  <div class='ajax-poll-item' tid='recipe10'>
    <div class='ajax-poll-item-caption'>
      <p>
      Vegetable Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Durkee's Grilled Portabella Barley Soup with Parmesan Crackers
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/Grilled Portabella and Barley Soup with Parmesan Crackers.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 10 -->
</form>
<!-- [END] Ajax Poll -->
<form class='ajax-poll-form' method="POST" tid='demo1' action='{$workspace}/vote_captcha.php' style="margin-top:30px;">
  <!-- [BEGIN] Title -->
  <div class='ajax-poll-title'>
  Discover Chef Steve's original twists on each category.
  </div>
  <!-- [END] Title -->

  <!-- [BEGIN] Item 1 -->
  <div class='ajax-poll-item' tid='recipe1'>
    <div class='ajax-poll-item-caption'>
      <p>Chicken Noodle</p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Chicken Ramen
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Chicken Ramen.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 1 -->

  <!-- [BEGIN] Item 2 -->
  <div class='ajax-poll-item' tid='recipe2'>
    <div class='ajax-poll-item-caption'>
      <p>
      Chowder (Excluding Clam)
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Chorizo Corn Chowder 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Chorizo Corn Chowder.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 2 -->

  <!-- [BEGIN] Item 3 -->
  <div class='ajax-poll-item' tid='recipe3'>
    <div class='ajax-poll-item-caption'>
     <p>
      Chowder
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Clam Chowder with Miso
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Clam Chowder with Miso.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 3 -->

  <!-- [BEGIN] Item 4 -->
  <div class='ajax-poll-item' tid='recipe4'>
    <div class='ajax-poll-item-caption'>
     <p>
      French Onion
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Bourbon Street French Onion 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Bourbon Street French Onion.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 4 -->
   <!-- [BEGIN] Item 5 -->
  <div class='ajax-poll-item' tid='recipe5'>
    <div class='ajax-poll-item-caption'>
      <p>
      Minestrone
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Roasted Garlic and Sundried Tomato 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Roasted Garlic and Sundried Tomato Minestorne.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 5 -->

  <!-- [BEGIN] Item 6 -->
  <div class='ajax-poll-item' tid='recipe6'>
    <div class='ajax-poll-item-caption'>
      <p>
      Potato Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Truffled Potato
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Truffled Potato Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 6 -->

  <!-- [BEGIN] Item 7 -->
  <div class='ajax-poll-item' tid='recipe7'>
    <div class='ajax-poll-item-caption'>
      <p>
      Seafood Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
     Chef Steve’s Thai Style Lobster Bisque 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Thai Style Lobster Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 7 -->

  <!-- [BEGIN] Item 8 -->
  <div class='ajax-poll-item' tid='recipe8'>
    <div class='ajax-poll-item-caption'>
      <p>
      Tortilla Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Three Chile Tortilla Soup 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Three Chile Tortilla Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 8 -->

  <!-- [BEGIN] Item 9 -->
  <div class='ajax-poll-item' tid='recipe9'>
    <div class='ajax-poll-item-caption'>
     <p>
      Vegetable Bisque
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Butternut Squash Bisque 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Butternut Squash Bisque.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 9 -->

  <!-- [BEGIN] Item 10 -->
  <div class='ajax-poll-item' tid='recipe10'>
    <div class='ajax-poll-item-caption'>
      <p>
      Vegetable Soup
    </p>
    </div>
    <div class='ajax-poll-item-desc-box'>
      Chef Steve’s Super Food Vegetable Soup 
    </div>
    <div class='ajax-poll-item-stats-box'>
      <div class='ajax-poll-item-bar'></div>
      <span class='ajax-poll-item-count'></span>
      <span class='ajax-poll-item-perc'></span>
    </div>
    <p><a class="recipe" href="{$workspace}/pdf/chefsteve/Super Food Vegetable Soup.pdf">Download Recipe</a></p>
  </div>
  <!-- [END] Item 10 -->

</form>
<!-- [END] Ajax Poll -->
</div>
  
<!-- End Tabrules -->
 <!-- End Mobile Layout -->
  </div>



</xsl:template>

</xsl:stylesheet>