<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <div class="mobile-only">
        <div class="sidebar">
            <ul>
                <li class="recipes-link">
                    <a href="#steps">Get Inspiring Recipe Ideas</a>
                </li>

                <li>
                    <a href="{$workspace}/assets/brochures/pdf/minors-natural-gluten-free-brochure-editable-and-saveable-with-adobe-reader.pdf">Download the Tested Gluten Free Brochure</a>
                </li>

                <li>
                    <a href="{$workspace}/assets/brochures/pdf/minors-low-sodium-bases-plus-one-ingredient-matrix.pdf">Download the Low Sodium Bases Plus-One Matrix</a>
                </li>

                <li>
                    <a href="#all-products">See All Tested Gluten Free Products</a>
                </li>
            </ul>
        </div>
    </div>



    <h1>Gluten free doesn't mean free of flavor.</h1>



    <div class="left">
        <img src="{$workspace}/img/gluten-free-hero.jpg" />

        <span class="caption">
            Pork Pozole made with <em>Minor's</em><sup>&#174;</sup> Red Chile Adobo Flavor Concentrate
        </span>
    </div>


    <div class="sidebar">
        <ul>
            <li class="recipes-link">
                <a href="#steps">Get Inspiring Recipe Ideas</a>
            </li>

            <li>
                <a href="{$workspace}/assets/brochures/pdf/minors-natural-gluten-free-brochure-editable-and-saveable-with-adobe-reader.pdf">Download the Tested Gluten Free Brochure</a>
            </li>

            <li>
                <a href="{$workspace}/assets/brochures/pdf/minors-low-sodium-bases-plus-one-ingredient-matrix.pdf">Download the Low Sodium Bases Plus-One Matrix</a>
            </li>

            <li>
                <a href="#all-products">See All Tested Gluten Free Products</a>
            </li>
        </ul>
    </div>



    <section class="intro">
        <img src="{$workspace}/img/pinnacle-dish.jpg" />

        <p>Flavor is the pinnacle of a great dish. And when you can offer more than flavor by delivering the nutritional options you seek, it more than sets you apart. Create a new following with <em>Minor's</em><sup>&#174;</sup>.</p>

        <p><em>Minor's</em> is flavor. And flavor means business<sup style="top: -2.5em; font-size: 40%;">TM</sup>.</p>
    </section>



    <section class="bullets">
        <div>
            <h2>Discover <em>Minor's</em> Tested Gluten Free Products</h2>

            <div class="bullet natural">
                <img src="{$workspace}/img/gluten-free-icon.png" />

                <h3>Natural Gluten Free</h3>

                <ul>
                    <li>Natural Gluten Free beef and chicken products are made with natural, high-quality ingredients including all natural chicken and all natural beef raised without added hormones or antibiotics</li>

                    <li><em>Minor's</em> Natural Gluten Free Bases offer a clean label, 25% less sodium than traditional bases, no MSG, 0g trans fat, 0g saturated fat, preservative free, no artificial flavors</li>

                    <li>Allergens: —</li>
                </ul>
            </div>


            <div class="bullet low-sodium">
                <img src="{$workspace}/img/gluten-free-icon.png" />

                <h3>Low Sodium Gluten Free</h3>

                <ul>
                    <li>Meet the needs of patrons with newly reformulated <em>Minor's</em> Low Sodium Chicken, Beef, and Vegetable Bases that are tested Gluten Free and meet USDA Low Sodium Guidelines (&lt;140mg of sodium per serving)</li>

                    <li>Allergens: —</li>
                </ul>
            </div>


            <div class="callout">
                <h3>In 2014, <em>Minor’s</em> helped operators serve guests 7 billion fewer mg of sodium by using Natural Gluten Free Bases</h3>

                <p class="footnote">
                    <sup>1</sup>Assuming that if an operator hadn’t used our Natural Gluten Free bases they would have used regular bases that have 25% more sodium.
                </p>
            </div>


            <div class="bullet other">
                <img src="{$workspace}/img/gluten-free-icon.png" />

                <h3>Other Gluten Free Products</h3>

                <ul>
                    <li>Create flavorful, savory dishes with a full line of Gluten Free products including <a href="#all-products" style="text-decoration: underline;">Flavor Concentrates, Bases and Sauces</a></li>
                </ul>
            </div>
        </div>
    </section>



    <section class="step first" id="steps">
        <label for="category">First, choose a gluten free product category</label>


        <select name="category">
            <option>Select a category</option>

            <option value="natural-gluten-free-bases">Natural Gluten Free Bases</option>
            <option value="low-sodium-bases">Low Sodium Bases</option>
            <option value="other-bases">Other Bases</option>
            <option value="flavor-concentrates">Flavor Concentrates</option>
            <option value="sauces">Sauces</option>

        </select>
    </section>

 <!--<section class="step step3" id="step3">
        <p>
            Next, select a day part.
        </p>

        <select class="daypart">
            <option disabled="disabled" selected="selected">Choose a daypart...</option>

            <option value="breakfast">Breakfast</option>
            <option value="lunch">Lunch</option>
            <option value="dinner">Dinner</option>
        </select>
    </section>-->

    <section class="step second">
        <label for="product">Next, select a gluten free flavor</label>


        <select name="product">
            <option>Select a flavor</option>

            <xsl:for-each select="gluten-free-products/category">
                <optgroup label="{@value}" class="{@handle}">
                    <xsl:for-each select="entry">
                        <option value="{name/@handle}">
                            <xsl:value-of select="name" />
                        </option>
                    </xsl:for-each>
                </optgroup>
            </xsl:for-each>
        </select>
    </section>


    <section class="product-info" id="product-info">
        <xsl:for-each select="gluten-free-products//entry">
            <div class="product {name/@handle}">
                <img src="{$workspace}{image/@path}/{image/filename}" />

                <h2>
                    <xsl:value-of select="name" />
                </h2>

                <xsl:copy-of select="description/*" />
            </div>
        </xsl:for-each>
    </section>


    <section class="recipes">
        <div class="left"></div>

        <div class="right"></div>

        <div class="hidden">
            <xsl:for-each select="gluten-free-recipes/entry">
                <div class="recipe">
                    <!-- attach names of related products -->
                    <xsl:attribute name="data-products">
                        <xsl:for-each select="products/item">
                            <xsl:value-of select="@handle" />
                            <xsl:if test="not(position() = last())">
                                <xsl:text> </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:attribute>


                    <!--
                    <img src="{$workspace}{image/@path}/{image/filename}" />
                    -->


                    <h3>
                        <xsl:value-of select="name" />
                    </h3>

                    <a href="{recipe-url}">Get the Full Recipe</a>
                </div>
            </xsl:for-each>
        </div>
    </section>



    <div class="trusted-celiac">
        <section class="trusted">
            <img src="{$workspace}/img/gluten-free-bases.png" />

            <h2>Trusted Taste and Flavors Tested Gluten Free</h2>

            <p>
                With <em>Minor's</em> Gluten Free Products, you can easily prepare special 
                plates for your customers with gluten restrictions.  Every dish 
                created using our Gluten Free Products will provide you peace of 
                mind in knowing that taste and consistency aren't being 
                compromised, and your customers' peace of mind in knowing their 
                nutritional needs are being met.
            </p>
        </section>



        <section class="celiac-disease">
            <img src="{$workspace}/img/gluten-free-icon.png" />

            <p>
                According to The NPD Group, 28% of adults report that they are avoiding gluten (2013)
            </p>
        </section>
    </div>



    <!--
    <section class="facts">
        <div class="first">
            <h3>Natural, high-quality ingredients</h3>

            <p>
                All of our tested gluten free beef and chicken products are made with all natural
                chicken and all natural beef raised without hormones or antibiotics.
            </p>
        </div>


        <div>
            <h3>Tested gluten free</h3>

            <p>Create savory dishes with tested gluten free bases.</p>
        </div>


        <div>
            <h3>Nutritionally sound/tested</h3>

            <p>
                Clean label, 25% less sodium than traditional bases, no MSG, 0g trans fat, 0g
                saturated fat, preservative free, no artificial flavors.
            </p>
        </div>
    </section>
    -->


    <section class="all-products" id="all-products">
        <h2>All <em>Minor's</em> Tested Gluten Free Bases</h2>

        <xsl:for-each select="gluten-free-product-details/category">
            <xsl:sort select="@handle" />

            <table>
                <thead>
                    <th class="name">
                        Tested Gluten Free <xsl:value-of select="@value" />s
                    </th>
                    <th class="upc">GTIN/UPC Code</th>
                    <th class="pack-size">Pack Size</th>
                    <th class="allergens">Allergens</th>
                </thead>

                <tbody>
                    <xsl:for-each select="entry">
                        <tr>
                            <xsl:if test="position() mod 2 = 0">
                                <xsl:attribute name="class">alt</xsl:attribute>
                            </xsl:if>

                            <td class="name">
                                <a href="{url}" target="_blank">
                                    <xsl:value-of select="name" />
                                </a>

                                <div class="lol-ie9">
                                    UPC: <xsl:value-of select="upc" />,
                                    Pack Size: <xsl:value-of select="pack-size" />,
                                    Allergens: <xsl:value-of select="allergens" />
                                </div>
                            </td>

                            <td class="upc">
                                <xsl:value-of select="upc" />
                            </td>

                            <td class="pack-size">
                                <xsl:value-of select="pack-size" />
                            </td>

                            <td class="allergens">
                                <xsl:value-of select="allergens" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </xsl:for-each>
    </section>
</xsl:template>
</xsl:stylesheet>
