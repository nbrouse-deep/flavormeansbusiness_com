<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:template name="nav-primary">
    <ul>
        <xsl:apply-templates select="/data/navigation//page[types//type = 'nav-primary']" />

        <li class="search mobile-only">
            <form method="get" action="/search/">
                <input type="search" name="keywords" placeholder="Search the site" />

                <input type="hidden" name="sections" value="blog-menu-concepts,brochures,chefs,flavor-means-business,heritage,latin-flavors,product-categories,products,recipes,request-a-sample,the-value-of-flavor,videos" />

                <input type="submit" value="Go" />
            </form>
        </li>
    </ul>
</xsl:template>



<xsl:template name="nav-secondary">
    <ul>
        <li>
            <xsl:if test="$current-page = 'blog'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/blog/">Chef's Blog</a>
        </li>

        <li>
            <xsl:if test="$current-page = 'request-a-sample'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/offers/request-a-sample/">Offers</a>
        </li>

        <li>
            <xsl:if test="$current-page = 'recipes'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/recipes/">Recipes</a>
        </li>

        <li>
            <xsl:if test="$current-page = 'powerofflavor'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/powerofflavor/">Power of Flavor</a>
        </li>

        <li>
            <xsl:if test="$current-page = 'heritage'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/heritage/">Heritage</a>
        </li>

       <!-- <li>
            <xsl:if test="$current-page = 'request-a-sample'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/offers/request-a-sample/">Request a Sample</a>
        </li> -->

        <li>
            <xsl:if test="$current-page = 'contact'">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/contact/">Contact Us</a>
        </li>
    </ul>
</xsl:template>
</xsl:stylesheet>
