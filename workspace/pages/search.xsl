<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <div class="left results">
        <h1>Search Results</h1>


        <p class="results-count">
            <xsl:if test="search/entry">
                <xsl:value-of select="search/pagination/@total-entries" /> of <xsl:value-of select="search/pagination/@total-entries" /> results for "<xsl:value-of select="/data/params/url-keywords" />"
            </xsl:if>

            <xsl:if test="not(search/entry)">
                No results found for "<xsl:value-of select="/data/params/url-keywords" />"
            </xsl:if>
        </p>


        <xsl:for-each select="search/entry">
            <div class="result">
                <xsl:choose>
                    <!-- blog and menu concepts -->
                    <xsl:when test="@section = 'blog-menu-concepts'">
                        <xsl:for-each select="/data/menu-concepts/entry[@id = current()/@id] | /data/blog/entry[@id = current()/@id]">
                            <xsl:if test="photo">
                                <a href="/{local-name(..)}/{headline/@handle}/" class="photo">
                                    <img src="/image/2/200/150/5{photo/@path}/{photo/filename}" />
                                </a>
                            </xsl:if>

                            <div class="copy">
                                <h2>
                                    <a href="/{local-name(..)}/{headline/@handle}/">
                                        <xsl:value-of select="headline" />
                                    </a>
                                </h2>

                                <h3>
                                    by <xsl:value-of select="author" />
                                </h3>

                                <xsl:copy-of select="copy/*[1]" />
                            </div>
                        </xsl:for-each>
                    </xsl:when>


                    <!-- brochures -->
                    <xsl:when test="@section = 'brochures'">
                        <xsl:for-each select="/data/brochures/entry[@id = current()/@id]">
                            <h2>
                                <a href="/brochures/{category/@handle}/#{name/@handle}">
                                    <xsl:value-of select="name" />
                                </a>
                            </h2>

                            <p>Click here to download this brochure</p>
                        </xsl:for-each>
                    </xsl:when>


                    <!-- chefs -->
                    <xsl:when test="@section = 'chefs'">
                        <xsl:for-each select="/data/chefs/entry[@id = current()/@id]">
                            <h2>
                                <a href="/chefs/{name/@handle}/">
                                    Chefs: <xsl:value-of select="name" />
                                </a>
                            </h2>

                            <xsl:copy-of select="short-biography/*" />
                        </xsl:for-each>
                    </xsl:when>


                    <!-- flavor means business -->
                    <xsl:when test="@section = 'flavor-means-business'">
                        <h2>
                            <a href="/flavor-means-business/">Flavor Means Business</a>
                        </h2>

                        <xsl:copy-of select="/data/flavor-means-business/copy/*[2]" />
                    </xsl:when>


                    <!-- minor's history -->
                    <xsl:when test="@section = 'heritage'">
                        <h2>
                            <a href="/heritage/">The MINOR'S Story</a>
                        </h2>

                        <xsl:copy-of select="/data/heritage/entry/story/*[3]" />
                    </xsl:when>


                    <!-- latin flavors -->
                    <xsl:when test="@section = 'latin-flavors'">
                        <xsl:for-each select="/data/latin-flavors/entry[@id = current()/@id]">
                            <h2>
                                <a href="/products/latin-flavors/">
                                    Latin Flavors: <xsl:value-of select="name" />
                                </a>
                            </h2>

                            <xsl:copy-of select="description/*" />
                        </xsl:for-each>
                    </xsl:when>


                    <!-- product categories -->
                    <xsl:when test="@section = 'product-categories'">
                        <xsl:for-each select="/data/product-categories/entry[@id = current()/@id]">
                            <h2>
                                <a href="/products/{name/@handle}">
                                    <xsl:value-of select="name" />
                                </a>
                            </h2>

                            <xsl:copy-of select="copy/*[2]" />
                        </xsl:for-each>
                    </xsl:when>


                    <!-- products landing -->
                    <xsl:when test="@section = 'products'">
                        <h2>
                            <a href="/products/">Products</a>
                        </h2>

                        <xsl:copy-of select="/data/products/entry/copy/*[1]" />
                    </xsl:when>


                    <!-- recipes -->
                    <xsl:when test="@section = 'recipes'">
                        <h2>
                            <a href="/recipes/">Recipes</a>
                        </h2>

                        <xsl:copy-of select="/data/recipes/entry/copy/*[2]" />
                    </xsl:when>


                    <!-- request a sample -->
                    <xsl:when test="@section = 'request-a-sample'">
                        <h2>
                            <a href="/offers/request-a-sample/">Request a Sample</a>
                        </h2>

                        <xsl:copy-of select="/data/request-a-sample/entry/copy/*[2]" />
                    </xsl:when>


                    <!-- the value of flavor -->
                    <xsl:when test="@section = 'the-value-of-flavor'">
                        <h2>
                            <a href="/powerofflavor">The Power of Flavor</a>
                        </h2>

                        <xsl:copy-of select="/data/value-of-flavor/entry/the-power-of-flavor-copy/*[2]" />
                    </xsl:when>


                    <!-- videos -->
                    <xsl:when test="@section = 'videos'">
                        <xsl:for-each select="/data/videos/entry[@id = current()/@id]">
                            <h2>
                                <a href="/videos/{title/@handle}/">
                                    <xsl:value-of select="title" />
                                </a>
                            </h2>

                            <xsl:copy-of select="description/*[1]" />
                        </xsl:for-each>
                    </xsl:when>


                    <!-- flavor expedition -->
                    <xsl:when test="@section = 'flavor-expedition'">
                        <h2>
                            <a href="/offers/flavor-expedition/">
                                Go on a Flavor Expedition
                            </a>
                        </h2>

                        <xsl:copy-of select="/data/flavor-expedition/entry/copy/*[1]" />
                    </xsl:when>
                </xsl:choose>
            </div>
        </xsl:for-each>
    </div>


    <xsl:call-template name="featured-sidebar" />
</xsl:template>

</xsl:stylesheet>
