<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/masterfull.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />



<xsl:template match="/data"><link rel="stylesheet" href="{$workspace}/css/custom.css" />


   <!--Desktop Layout -->
   <div class="desktop-only">
   
   <div class="battleforbocuse">
   <h1>Battle for bocuse d'or with chef steve</h1>
   <img class="floatleft" src="{$workspace}/img/battle-for-bocuse.jpg" />
   <div class="floatleft bocuse-right"><p>You could win a trip to France!<br /><span style="color:#555555; font-style: normal; margin-top:5px;position:absolute;font-size:14px; font-weight:lighter;">Entries are limited, so get started today</span></p>
    <a href="#enter"><div class="enternow"><p>Enter Now</p></div></a>
   <ul>
   <a href="#details"><li>Contest Details</li></a>
   <a href="#details"><li>Prize Overview</li></a>
   <a href="#enter"><li>Soup Categories</li></a>
   <a href="/bocuse-recipes/Battle-For-Bocuse-Official-Rules.pdf"><li>Official Rules</li></a>
   </ul>
  
   </div>
   </div>
   <div class="thebattle"><img src="{$workspace}/img/thebattle.jpg" />
   <h1 class="textcenter"><span style="font-size:22px;text-transform:uppercase; color:#B73129;">Let the battle begin!</span><span style="font-size:22px;"> Submit your recipe by 9/1/14.</span></h1>
   <img src="{$workspace}/img/thebattle.jpg" />
   </div>
   <div class="challengerprofile"><img class="floatleft" src="{$workspace}/img/chef-steve.jpg" />
   <div style="max-width:100%;"><h2>The MINOR'S Soup Recipe Contest</h2>
   <p>Go flavor to flavor with MINOR'S Chef Steve Skomski for the chance to win a trip to watch the prestigious Bocuse d'Or culinar competition in Lyon, France.</p>
   <p>Review each of Chef Steve's twists on soup and compete by submitting your own creation in one of the following categories (based on Datassential’s Top Soup Dishes on Menus 2013) by 9/1/14.</p>
   <a href="#details"><p>See contest and prize details below.</p></a></div>
   </div>
   <div class="contest-pieces">
   <a name="enter"></a>
   <p class="letsbattle">Let's Battle. Choose one soup category and compete against that featured recipe.<br />Only the first 100 entries for each soup category will be judged, so enter soon!<br /><span style="font-size:13px;">Click recipe images below to download Chef Steve's recipes.</span></p>
   <div class="row1">
   <div id="chicken-noodle">
   <div id="overlay"><a href="/bocuse-recipes/Chicken-Ramen.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
  <a href="https://stouffersrisotto.wufoo.com/forms/q1ybg2qz17wl5fi/" onclick="window.open(this.href,  null, 'height=1413, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><div id="enter"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></div></a>
  </div>s
   <div id="chowder">
   <div id="overlay"><a href="/bocuse-recipes/Chorizo-Corn-Chowder.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/rqv8v480onbeyh/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   </div>
   <div class="row2">
   <div id="clam-chowder">
  <div id="overlay"><a href="/bocuse-recipes/Clam-Chowder-with-Miso.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/q7up7th160s69j/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   <div id="french-onion">
   <div id="overlay"><a href="/bocuse-recipes/Bourbon-Street-French-Onion.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/qnznuho1kqfegl/" onclick="window.open(this.href,  null, 'height=1413, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>   
   </div>
   <div class="row3">
   <div id="minestrone">
   <div id="overlay"><a href="/bocuse-recipes/Roasted-Garlic-and-Sundried-Tomato-Minestrone.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/q1lq0nse0jtr9q9/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
 <div id="potato-soup">
 <div id="overlay"><a href="/bocuse-recipes/Truffled-Potato-Soup.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/r1sa5ivr1ve5yj6/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   </div>
   <div class="row4">
     <div id="seafood-bisque">
     <div id="overlay"><a href="/bocuse-recipes/Thai-Style-Lobster-Bisque.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/r1bkw3nj0cxc6c7/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   <div id="tortilla-soup">
  <div id="overlay"><a href="/bocuse-recipes/Three-Chile-Tortilla-Soup.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
  <a href="https://stouffersrisotto.wufoo.com/forms/rygwb921jxgu0n/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   </div>
   <div class="row5">
   <div id="vegetable-bisque">
   <div id="overlay"><a href="/bocuse-recipes/Butternut-Squash-Bisque.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/momt9gt1x48kip/" onclick="window.open(this.href,  null, 'height=1413, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   <div id="vegetable-soup">
   <div id="overlay"><a href="/bocuse-recipes/Super-Food-Vegetable-Soup.pdf" target="_blank"><img class="download-recipe" src="{$workspace}/img/download-recipe.png" /></a></div>
   <a href="https://stouffersrisotto.wufoo.com/forms/r1yvs6bn0tskcvl/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img class="enter-now" src="{$workspace}/img/enter-now.png" /></a></div>
   </div>
   </div>
   <div class="celebrate"><img src="{$workspace}/img/chef-celebrate.jpg" />
   </div>
   <a name="details"></a>
   <h1 class="textcenter souprecipe">The MINOR’S Soup Recipe Contest</h1>
    <!-- Tabrules start -->
  <div class="tabrules">
  <div class="howtoenter"><img class="floatleft" src="{$workspace}/img/how-to-enter.png" />
  <h2>How to Enter</h2>
  <p>Choose 1 of the 10 categories above to challenge. Limit one (1) entry per operator. Complete the entry form on this site and submit your original soup recipe by 9/1/14. Recipe must feature at least one MINOR’S soup base. Additional MINOR’S products may be used as desired. Submitted recipes will be reviewed by the MINOR’S panel of judges based on the combination of flavor, creativity and operational efficiency. In each category, one soup will be selected as the category finalist.</p>
   </div>
   <div class="voting"><img class="floatleft" src="{$workspace}/img/voting.png" />
   <h2>Voting and Winner Selection</h2>
  <p>The ten category finalists’ names and recipes will be posted to flavormeansbusiness.com/battleforbocuse from 10/1/14 through 10/31/14 for a voting session open to the general public. The category finalist with the most votes will be designated the grand prize winner.</p>
   </div>
   <div class="prizes"><img class="floatleft" src="{$workspace}/img/prizes.png" />
   <h2>Prizes</h2>
  <p>Category Finalists</p> 
<p>Each of the ten category finalists will receive a professionally styled and photographed canvas print of their submitted recipe.
</p>
   </div>
   <div class="grandprize"><img class="floatleft" src="{$workspace}/img/grandprize.png" />
   <h2>Grand Prize Winner</h2>
  <p>The grand prize winner will receive a four-night trip for two (2) to watch the Bocuse d’Or culinary competition in Lyon, France, January 2015. Prize includes economy airfare for two, a four-night hotel stay, tickets to the Bocuse d’Or competition and a $400 gift card for expenses.</p>
<p>For complete contest rules, <a href="/bocuse-recipes/Battle-For-Bocuse-Official-Rules.pdf">click here.</a></p>
   </div>
</div>
<!-- End Tabrules -->
   </div>
  <!-- End Desktop Layout -->
  
  <!--Mobile Layout -->
  <div class="mobile-only">
   <ul>
   <a href="#mobiledetails"><li>Contest Details</li></a>
   <a href="#mobiledetails"><li>Prize Overview</li></a>
   <a href="#mobileenter"><li>Soup Categories</li></a>
   <a href="/bocuse-recipes/Battle-For-Bocuse-Official-Rules.pdf"><li>Official Rules</li></a>
   <a href="#mobileenter"><li style="border-bottom: 1px solid #e5e5e5;">Enter Now</li></a>
   </ul>
    
   <!--Start Mobile Battle for Bocuse -->
   <div class="mobile-battleforbocuse">
   <h1>Battle for bocuse d'or with chef steve</h1>
   <img src="{$workspace}/img/battle-for-bocuse.jpg" />
  </div>
  <!--End Mobile Battle for Bocuse -->
  <div class="mobile-trip">
  <p>You could win a trip to France!<br /><span class="mobile-entries">Entries are limited, so get started today</span></p>
 </div>
 <div class="thebattle"><img src="{$workspace}/img/thebattle.jpg" />
   <h1 class="textcenter"><span style="padding:0 3px;font-size:18px;text-transform:uppercase; color:#B73129;">Let the battle begin!</span><br /><span style="font-size:19px;"> Submit your soup recipe   by 9/1/14.</span></h1>
   <img src="{$workspace}/img/thebattle.jpg" />
   </div>
   <div class="challengerprofile"><img src="{$workspace}/img/chef-steve-prof-bio.png" />
   <h2>The MINOR'S Soup Recipe Contest</h2>
   <p>Go flavor to flavor with MINOR'S Chef Steve Skomski for the chance to win a trip to watch the prestigious Bocuse d'Or culinar competition in Lyon, France.</p>
   <p>Review each of Chef Steve's twists on soup and compete by submitting your own creation in one of the following categories by 9/1/14.</p>
   <a href="#details"><p>See contest and prize details below.</p></a>
   </div>
   <a name="mobileenter"></a>
   <p class="letsbattle">Let's Battle. Choose one soup category and compete against that featured recipe.<br />Only the first 100 entries for each soup category will be judged, so enter soon!</p>
<div class="contest-pieces">
<!--Chicken Noodle -->
<div class="mobile-chicken-noodle">
<a class="mobile-recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Chicken-Ramen.pdf" target="_blank"><img src="{$workspace}/img/chicken-noodle.png" /></a>
<a class="enter-now-mobile" href"https://minors.wufoo.com/forms/z1g9pjh18vp4pi/" onclick="window.open(this.href,  null, 'height=1468, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false"><img src="{$workspace}/img/enter-now-mobile.png" /></a>
</div>
<!-- Chowder -->
<div class="mobile-chowder">
<img id="recipe2" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe2" id="map2">
<area  alt="Chicken Noodle" title="Chowder Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Chorizo-Corn-Chowder.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/rqv8v480onbeyh/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Clam Chowder -->
<div class="mobile-clam-chowder">
<img id="recipe3" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe3" id="map3">
<area  alt="Clam Chowder" title="Clam Chowder Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Clam-Chowder-with-Miso.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/q7up7th160s69j/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- French Onion -->
<div class="mobile-french-onion">
<img id="recipe4" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe4" id="map4">
<area  alt="French Onion" title="French Onion Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Bourbon-Street-French-Onion.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/qnznuho1kqfegl/" onclick="window.open(this.href,  null, 'height=1413, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Minestrone -->
<div class="mobile-minestrone">
<img id="recipe5" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe5" id="map5">
<area  alt="Minestrone" title="Minestrone Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Roasted-Garlic-and-Sundried-Tomato-Minestrone.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/q1lq0nse0jtr9q9/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Potato Soup -->
<div class="mobile-potato-soup">
<img id="recipe6" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe6" id="map6">
<area  alt="Potato Soup" title="Potato Soup Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Truffled-Potato-Soup.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/r1sa5ivr1ve5yj6/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Seafood Bisque -->
<div class="mobile-seafood-bisque">
<img id="recipe7" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe7" id="map7">
<area  alt="Seafood Bisque" title="Seafood Bisque Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Thai-Style-Lobster-Bisque.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/r1bkw3nj0cxc6c7/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Tortilla Soup -->
<div class="mobile-tortilla-soup">
<img id="recipe8" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe8" id="map8">
<area  alt="Tortilla Soup" title="Tortilla Soup Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Three-Chile-Tortilla-Soup.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/rygwb921jxgu0n/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Vegetable Bisque -->
<div class="mobile-vegetable-bisque"> 
<img id="recipe9" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe9" id="map9">
<area  alt="Vegetable Bisque" title="Vegetable Bisque Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Butternut-Squash-Bisque.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/momt9gt1x48kip/" onclick="window.open(this.href,  null, 'height=1413, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
<!-- Vegetable Soup -->
<div class="mobile-vegetable-soup">
<img id="recipe10" src="{$workspace}/img/chowder.png" border="0" width="500" height="193" orgWidth="500" orgHeight="193" usemap="#recipe2" alt="" />
<map name="recipe10" id="map10">
<area  alt="Vegetable Soup" title="Vegetable Soup Recipe" href="http://www.flavormeansbusiness.com/bocuse-recipes/Super-Food-Vegetable-Soup.pdf" shape="rect" coords="1,85,253,188" style="outline:none;" target="_blank"     />
<area  alt="" title="" href="https://stouffersrisotto.wufoo.com/forms/r1yvs6bn0tskcvl/" onclick="window.open(this.href,  null, 'height=1450, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1'); return false" shape="rect" coords="303,121,449,176" style="outline:none;" target="_self"     />
<area shape="rect" coords="498,191,500,193" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
</map>
</div>
</div>
  <!-- Tabrules start -->
  <a name="mobiledetails"></a>
  <h1 class="textcenter souprecipe">The MINOR’S&#174; Soup Recipe Contest</h1>
  <div class="tabrules">
  <div class="howtoenter">
  <h2>How to Enter</h2>
  <p>Choose 1 of the 10 categories above to challenge. Limit one (1) entry per operator. Complete the entry form on this site and submit your original soup recipe by 9/1/14. Recipe must feature at least one MINOR’S soup base. Additional MINOR’S products may be used as desired. Submitted recipes will be reviewed by the MINOR’S panel of judges based on the combination of flavor, creativity and operational efficiency. In each category, one soup will be selected as the category finalist.</p>
   </div>
   <div class="voting">
   <h2>Voting and Winner Selection</h2>
  <p>The ten category finalists’ names and recipes will be posted to flavormeansbusiness.com/battleforbocuse from 10/1/14 through 10/31/14 for a voting session open to the general public. The category finalist with the most votes will be designated the grand prize winner.</p>
   </div>
   <div class="prizes">
   <h2>Prizes</h2>
  <p>Category Finalists</p> 
<p>Each of the ten category finalists will receive a professionally styled and photographed canvas print of their submitted recipe.
</p>
   </div>
   <div class="grandprize">
   <h2>Grand Prize Winner</h2>
  <p>The grand prize winner will receive a four-night trip for two (2) to watch the Bocuse d’Or culinary competition in Lyon, France, January 2015. Prize includes economy airfare for two, a four-night hotel stay, tickets to the Bocuse d’Or competition and a $400 gift card for expenses.</p>
<p>For complete contest rules, <a href="/bocuse-recipes/Battle-For-Bocuse-Official-Rules.pdf" style="text-decoration:underline;">click here.</a></p>
   </div>
</div>
<!-- End Tabrules -->
 <!-- End Mobile Layout -->
  </div>
 
  
  
</xsl:template>

</xsl:stylesheet>
