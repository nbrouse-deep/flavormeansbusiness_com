<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <div class="mobile-only"> 
        <div class="sidebar">
            <ul>
                <li>
                    <a href="#steps">Get Inspiring Menu Ideas</a>
                </li>

                <li>
                    <a href="{$workspace}/assets/pdf/minors-latin-flavor-brochure.pdf">Download the Latin Flavor Concentrates Brochure</a>
                </li>

                <li>
                    <a href="#new-flavors">See Latin Flavor Concentrates Product Info</a>
                </li>

                <li>
                    <a href="{$workspace}/assets/pdf/Minors-Latin-Flavors-Free-Case-Rebate-Fillable-With-Adobe-Reader.pdf">Download the Latin Flavors Plus-One Matrix</a>
                </li>

                <li>
                  <!--  <a href="{$workspace}/assets/pdf/Minors-Latin-Flavors-Free-Case-Rebate-Fillable-With-Adobe-Reader.pdf">Download the Latin Flavors Free Case Rebate</a> -->
                </li>
            </ul>
        </div>
    </div>



    <h1>&#8220;Sabor&#8221; means &#8220;flavor&#8221; and Flavor Means Business<sup>™</sup>.</h1>



    <div class="left">
        <img src="{$workspace}/img/latin-flavors-hero.jpg" />

        <span class="caption">
            Scallop and Jalapeño Ceviche with Plantain Chips made with <em>Minor's</em><sup>&#174;</sup> Jalapeño Flavor Concentrate
        </span>
    </div>


    <div class="sidebar">
        <ul>
            <li>
                <a href="#steps">Get Inspiring Menu Ideas</a>
            </li>

            <li>
                <a href="{$workspace}/assets/pdf/minors-latin-flavor-brochure.pdf">Download the Latin Flavor Concentrates Brochure</a>
            </li>

            <li>
                <a href="#new-flavors">See Latin Flavor Concentrates Product Info</a>
            </li>

            <li>
                <a href="{$workspace}/assets/brochures/pdf/minors-latin-flavor-matrix.pdf">Download the Latin Flavors Plus-One Matrix</a>
            </li>

            <li>
               <!-- <a href="{$workspace}/assets/pdf/Minors-Latin-Flavors-Free-Case-Rebate-Fillable-With-Adobe-Reader.pdf">Download the Latin Flavors Free Case Rebate</a> -->
            </li>
        </ul>
    </div>



    <!-- intro copy -->
    <section class="flavor-is-essential">
        <div>
            <img src="{$workspace}/img/breakfast.jpg" />

            <p>
                Flavor is essential. Flavor with distinction is in demand. New <em>Minor's</em> Latin Flavor Concentrates 
                help you deliver on both. Add the vibrant spice and passion guests desire to nearly any dish, and 
                you can create flavor they won’t forget.
            </p>
        </div>
    </section>



    <!-- recipe search -->
    <h2 class="steps" id="steps">
        Discover endless possibilities and ideas for your menu.
    </h2>



    <section class="step step1">
        <p>
            First, choose a flavor.
        </p>

        <select class="product">
            <option disabled="disabled" selected="selected">Choose a product...</option>

            <xsl:for-each select="latin-flavors/entry[@id = /data/latin-flavors-recipes//entry/product//item/@id]">
                <option value="{name/@handle}">
                    <xsl:value-of select="name" />
                </option>
            </xsl:for-each>
        </select>
    </section>


    <!-- info about selected product from recipe search -->
    <section class="product-info" id="product-info">
        <xsl:for-each select="latin-flavors/entry">
            <div class="product {name/@handle}">
                <img src="{$workspace}{image/@path}/{image/filename}" />

                <h2>
                    <xsl:value-of select="name" />
                </h2>

                <xsl:copy-of select="description/*" />
            </div>
        </xsl:for-each>
    </section>


    <section class="step step2">
        <p>
            Next, select a day part.
        </p>

        <select class="daypart">
            <option disabled="disabled" selected="selected">Choose a daypart...</option>

            <option value="breakfast">Breakfast</option>
            <option value="lunch">Lunch</option>
            <option value="dinner">Dinner</option>
        </select>
    </section>


    <section class="step step3" id="step3">
        <p>Explore ways to add "SABOR" to your menu.</p>
    </section>



    <!-- available categories of recipes -->
    <section class="categories" id="categories">
        <ul>
            <li class="all">
                <a href="#">All Recipes</a>
            </li>

            <xsl:for-each select="latin-flavors-recipes-tags/tag">
                <li class="{@handle}">
                    <a href="#">
                        <xsl:value-of select="." />
                    </a>
                </li>
            </xsl:for-each>
        </ul>
    </section>



    <!-- recipe ideas which may or may not actually have recipes attached to them -->
    <section class="recipes">
        <div>
            <div class="left">
            </div>

            <div class="right">
            </div>

            <div class="hidden">
                <xsl:apply-templates select="latin-flavors-recipes/entry[photo]" />

                <xsl:apply-templates select="latin-flavors-recipes/entry[recipe-url and not(photo)]" />

                <xsl:apply-templates select="latin-flavors-recipes/entry[not(recipe-url) and not(photo)]" />
            </div>

            <p class="plus-ones">
                Turn traditional into "SABOR" with plus-one recipe ideas for condiments, dressings, sauces, and more.
                <a href="{$workspace}/assets/minors-latin-flavor-concentrates-plus-ones.pdf">Download Plus-Ones</a>
            </p>
        </div>
    </section>



    <!-- facts and what have you -->
    <section class="facts">
        <div class="takes-them-away">
            <h2>Flavor that takes them away will bring them back.</h2>

            <p>
                Fire roasted peppers. Cilantro. Lime. <em>Minor's</em> Latin Flavor Concentrates speak to the on-trend tastes customers increasingly demand with the authenticity and efficiency you require. 
            </p>
        </div>


        <div class="satisfy">
            <h2>Satisfy Adventurous Tastes</h2>

            <ul>
                <li>Only 1 in 4 consumers say they are satisfied with the availability of ethnic foods at restaurants<sup>1</sup></li>
                <li>Latin flavors still show up on half of all restaurant menus even when excluding Latin American concepts<sup>2</sup></li>
                <li>77% of Millennials say they enjoy eating a variety of ethnic foods<sup>3</sup></li>
            </ul>
        </div>


        <div class="footnotes">
            <p><sup>1</sup>Technomic Consumer Food Trends, 2012</p>
            <p><sup>2</sup>Datassential MenuTrends, Latin, December 2012</p>
            <p><sup>3</sup>”American Millennials: Deciphering the Enigma Generation” Report published by Barkley, Services Management Group, and The Boston Consulting Group, 2013</p>
        </div>
    </section>



    <!-- more facts -->
    <section class="endless-possibilities">
        <h2>Endless Possibilities Begin with &#8220;Sabor&#8221;</h2>

        <div class="points">
            <div class="first">
                <h3>Flavor Integrity</h3>

                <p>Refrigerated to maintain brilliant, unforgettable flavor.</p>
            </div>

            <div>
                <h3>No Added Labor</h3>

                <p>Exotic Latin flavors within reach—no need for sourcing and prepping multiple ingredients.</p>
            </div>

            <div>
                <h3>Versatility</h3>

                <p>Ideal for a range of recipes—hot or cold—from soups, marinades and sauces, to dips, spreads, and salad dressings.</p>
            </div>

            <div>
                <h3>Ease and Consistency</h3>

                <p>Simply stir in to add depth of flavor and consistent heat you can count on.</p>
            </div>
        </div>
    </section>



    <!-- new latin flavor concentrates -->
    <section class="new flavors" id="new-flavors">
        <h2>New Latin Flavor Concentrates</h2>

        <table>
            <thead>
                <th class="image"></th>
                <th class="name">Flavor Concentrates</th>
                <th class="upc">GTIN/UPC Code</th>
                <th class="size">Pack Size</th>
                <th class="allergens">Allergens</th>
                <th class="extra"></th>
            </thead>

            <tbody>
                <xsl:apply-templates select="latin-flavors/entry[new = 'Yes']" />
            </tbody>
        </table>
    </section>



    <!-- original latin flavor concentrates -->
    <section class="flavors">
        <h2>Original Latin Flavor Concentrates</h2>

        <table>
            <thead>
                <th class="image"></th>
                <th class="name">Flavor Concentrates</th>
                <th class="upc">GTIN/UPC Code</th>
                <th class="size">Pack Size</th>
                <th class="allergens">Allergens</th>
                <th class="extra"></th>
            </thead>

            <tbody>
                <xsl:apply-templates select="latin-flavors/entry" />
            </tbody>
        </table>
    </section>
</xsl:template>






<!-- recipes -->
<xsl:template match="latin-flavors-recipes/entry">
    <div class="recipe">
        <xsl:attribute name="class">recipe<xsl:if test="not(photo)"> no-photo</xsl:if></xsl:attribute>

        <!-- products -->
        <xsl:attribute name="data-products"> 
            <xsl:text> </xsl:text>
            <xsl:for-each select="product/item">
                <xsl:value-of select="@handle" /> 
                <xsl:text> </xsl:text>
            </xsl:for-each>
        </xsl:attribute>

        <!-- dayparts -->
        <xsl:attribute name="data-dayparts"> 
            <xsl:text> </xsl:text>
            <xsl:for-each select="daypart/item">
                <xsl:value-of select="@handle" /> 
                <xsl:text> </xsl:text>
            </xsl:for-each>
        </xsl:attribute>

        <!-- tags -->
        <xsl:attribute name="data-tags"> 
            <xsl:text> </xsl:text>
            <xsl:for-each select="categories/item">
                <xsl:value-of select="@handle" /> 
                <xsl:text> </xsl:text>
            </xsl:for-each>
        </xsl:attribute>


        <xsl:if test="photo">
            <xsl:if test="menu-concept">
                <a href="{menu-concept-url}">
                    <img src="{$workspace}{photo/@path}/{photo/filename}" />
                </a>
            </xsl:if>


            <xsl:if test="not(menu-concept) and recipe-url">
                <a href="{recipe-url}">
                    <img src="{$workspace}{photo/@path}/{photo/filename}" />
                </a>
            </xsl:if>

            <xsl:if test="not(menu-concept or recipe-url)">
                <img src="{$workspace}{photo/@path}/{photo/filename}" />
            </xsl:if>
        </xsl:if>


        <h3>
            <xsl:if test="menu-concept">
                <a href="{menu-concept-url}">
                    <xsl:value-of select="name" />
                </a>
            </xsl:if>


            <xsl:if test="not(menu-concept) and recipe-url">
                <a href="{recipe-url}">
                    <xsl:value-of select="name" />
                </a>
            </xsl:if>

            <xsl:if test="not(menu-concept or recipe-url)">
                <xsl:value-of select="name" />
            </xsl:if>
        </h3>


        <h4>
            <xsl:value-of select="extra" />
        </h4>

        <xsl:if test="recipe-url">
            <p class="recipe-url">
                <a href="{recipe-url}">Get the full recipe</a>
            </p>
        </xsl:if>

        <xsl:if test="menu-concept-url">
            <p class="menu-concept-url">
                <a href="{menu-concept-url}" target="_blank">See the Menu Concept</a>
            </p>
        </xsl:if>


        <xsl:if test="gluten-free = 'Yes'">
            <p class="gluten-free">Gluten Free</p>
        </xsl:if>


        <xsl:if test="vegetarian = 'Yes'">
            <p class="vegetarian">Vegetarian</p>
        </xsl:if>
    </div>
</xsl:template>




<!-- product listing -->
<xsl:template match="latin-flavors/entry">
    <tr class="product-facts">
        <td rowspan="3" class="image">
            <a href="{link}">
                <img src="{$workspace}{image/@path}/{image/filename}" />
            </a>
        </td>

        <td class="name">
            <a href="{link}">
                <xsl:value-of select="name" />
            </a>
        </td>

        <td class="upc">
            <xsl:value-of select="gtin-upc-code" />
        </td>

        <td class="size">
            <xsl:value-of select="pack-size" />
        </td>

        <td class="allergens">
            <xsl:value-of select="allergens" />

            <xsl:if test="not(allergens)">—</xsl:if>
        </td>

        <td class="extra">
            <xsl:if test="gluten-free = 'Yes'">
                <span>Gluten Free</span>
            </xsl:if>

            <xsl:if test="vegetarian = 'Yes'">
                <span>Vegetarian</span>
            </xsl:if>
        </td>
    </tr>

    <tr class="desc-row">
        <td colspan="5" class="description">
            <xsl:copy-of select="description/*" />
        </td>
    </tr>

    <tr>
        <td colspan="5" class="empty">&#160;</td>
    </tr>
</xsl:template>
</xsl:stylesheet>
