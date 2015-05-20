<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <div class="mobile-only">
        <div class="sidebar">
            <h2>Featured Product Pages</h2>

            <ul>
                <li>
                    <a href="/products/gluten-free/">Gluten Free Product Line</a>
                </li>

                <li>
                    <a href="/products/latin-flavors/">Latin Flavor Concentrates</a>
                </li>

               <li class="get-a-sample">
                    <a href="/offers/request-a-sample">Get a Free Sample</a>
                </li>
            </ul>
        </div>
    </div>


    <div class="left" id="top">
        <!-- landing page -->
        <xsl:if test="not(product-categories/entry[name/@handle = /data/params/category])">
            <img src="{$workspace}/img/misto-skewers.jpg" class="main-image" />

            <span class="caption">Fritto Misto Skewers with <em>Minor's</em> Hollandaise Sauce</span>

            <h1>Flavor Means Business<sup>™</sup>. <em>Minor's</em><sub>&#174;</sub> Knows Both.</h1>

            <div class="landing">
                <xsl:copy-of select="products/entry/copy/*" />

                <ul class="buttons">
                    <!-- main category buttons -->
                    <xsl:for-each select="product-categories/entry[not(parent-category)]">
                        <li>
                            <a href="/products/{name/@handle}/">
                                <span>
                                    <xsl:value-of select="name" />
                                </span>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>


                <p class="brochures">
                    <a href="/brochures/">For more information, view <em>Minor's</em> product brochures.</a>
                </p>
            </div>
        </xsl:if>

        

        <!-- requested product category -->
        <xsl:for-each select="product-categories/entry[name/@handle = /data/params/category]">
            <xsl:if test="main-image">
                <img src="{$workspace}{main-image/@path}/{main-image/filename}" class="main-image" />

                <span class="caption">
                    <xsl:value-of select="main-image-caption" />
                </span>
            </xsl:if>

            <xsl:if test="not(main-image)">
                <img src="{$workspace}{/data/product-categories/entry[@id = current()/parent-category/item/@id]/main-image/@path}/{/data/product-categories/entry[@id = current()/parent-category/item/@id]/main-image/filename}" class="main-image" />

                <span class="caption">
                    <xsl:value-of select="/data/product-categories/entry[@id = current()/parent-category/item/@id]/main-image-caption" />
                </span>
            </xsl:if>

            <div class="copy">
                <xsl:if test="product-image">
                    <img src="{$workspace}{product-image/@path}/{product-image/filename}" class="product-image" />
                </xsl:if>

                <xsl:if test="not(product-image)">
                    <img src="{$workspace}{/data/product-categories/entry[@id = current()/parent-category/item/@id]/product-image/@path}/{/data/product-categories/entry[@id = current()/parent-category/item/@id]/product-image/filename}" class="product-image" />
                </xsl:if>

                <xsl:copy-of select="copy/*" />
            </div>


            <!-- product listing with links per requested category -->
            <div class="products-list">
                <xsl:if test="products">
                    <xsl:apply-templates select="." mode="products-list" />
                </xsl:if>

                <xsl:apply-templates select="/data/product-categories/entry[parent-category/item/@id = current()/@id]" mode="products-list" />
            </div>


            <p class="back">
                <a href="/products/" class="button">Back to Product Lines</a>
            </p>


            <xsl:if test="/data/params/category = 'flavor-concentrates'">
                <p class="latin-flavors">
                    <a href="/products/latin-flavors/">Learn more about Latin Flavors</a>
                </p>
            </xsl:if>
        </xsl:for-each>
    </div>


    <div class="sidebar">
        <h2>Product Lines</h2>

        <ul>
            <xsl:apply-templates select="product-categories/entry[not(parent-category)]" mode="sidebar" />
        </ul>

        <div class="featured">
            <h3>Featured Product Pages</h3>

            <ul>
                <li>
                    <a href="/products/gluten-free/">Gluten Free Product Line</a>
                </li>

                <li>
                    <a href="/products/latin-flavors/">Latin Flavor Concentrates</a>
                </li>
            </ul>
        </div>

        <!--<a href="/offers/request-a-sample" class="sample">Click to Get Free Sample</a> -->
    </div>
</xsl:template>




<xsl:template match="product-categories/entry" mode="products-list">
    <h2 id="{name/@handle}">
        <a href="/products/{name/@handle}/">
            <xsl:value-of select="name" />
        </a>
    </h2>


    <xsl:if test="parent-category">
        <xsl:copy-of select="copy/*" />
    </xsl:if>

    <ul>
        <xsl:for-each select="products/item[not(name = preceding-sibling::node()/name)]">
            <li>
                <xsl:if test="position() mod 2 = 0">
                    <xsl:attribute name="class">even</xsl:attribute>
                </xsl:if>

                <h4>
                    <xsl:value-of select="name" />

                    <xsl:if test="new = 'yes'">
                        <span class="new">NEW</span>
                    </xsl:if>
                </h4>

                <div class="details">
                    <xsl:for-each select="../item[name = current()/name]">
                        <p class="size">
                            <xsl:value-of select="size" />
                        </p>

                        <p class="url">
                            <a href="{url}" target="_blank">See Product Info</a>
                        </p>
                    </xsl:for-each>
                </div>
            </li>
        </xsl:for-each>
    </ul>
</xsl:template>



<!-- product categories for sidebar -->
<xsl:template match="product-categories/entry" mode="sidebar">
    <li>
        <xsl:attribute name="class">
            <xsl:if test="/data/params/category = name/@handle or /data/params/category = /data/product-categories/entry[parent-category/item/@id = current()/@id]/name/@handle">active expanded</xsl:if>
            <xsl:if test="not(/data/product-categories/entry[parent-category/item/@id = current()/@id])"> no-children</xsl:if>
        </xsl:attribute>


        <xsl:if test="parent-category">
            <a href="#{name/@handle}">
                <xsl:value-of select="name" />
            </a>
        </xsl:if>

        <xsl:if test="not(parent-category)">
            <a href="/products/{name/@handle}/">
                <xsl:value-of select="name" />
            </a>
        </xsl:if>

        <xsl:if test="/data/product-categories/entry[parent-category/item/@id = current()/@id]">
            <ul>
                <xsl:apply-templates select="/data/product-categories/entry[parent-category/item/@id = current()/@id]" mode="sidebar" />
            </ul>
        </xsl:if>
    </li>
</xsl:template>
</xsl:stylesheet>
