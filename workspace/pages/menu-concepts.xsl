<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/blog.xsl" />
<xsl:import href="../utilities/pagination.xsl" />




<xsl:template match="/data">
    <div class="left">
        <h1 class="mobile-only">
            <a href="/menu-concepts/">
                Menu Concepts
            </a>
        </h1>


        <xsl:choose>
            <!-- show a single menu concept -->
            <xsl:when test="menu-concepts/entry[headline/@handle = /data/params/article]">
                <xsl:apply-templates select="menu-concepts/entry[headline/@handle = /data/params/article]" mode="single" />
            </xsl:when>

            <!-- show the article summaries -->
            <xsl:otherwise>
                <xsl:if test="menu-concepts/entry[sticky = 'Yes']">
                    <xsl:for-each select="menu-concepts/entry[sticky = 'Yes'][1]">
                        <img src="{$workspace}{photo/@path}/{photo/filename}" class="featured-image" />

                        <div class="featured">
                            <xsl:apply-templates select="." mode="multiple" />
                        </div>
                    </xsl:for-each>
                </xsl:if>

                <xsl:if test="/data/params/url-from = 'popular'">
                    <xsl:apply-templates select="menu-concepts/entry" mode="multiple">
                        <xsl:sort select="views" data-type="number" order="descending" />
                    </xsl:apply-templates>
                </xsl:if>

                <xsl:if test="not(/data/params/url-from = 'popular')">
                    <xsl:apply-templates select="menu-concepts/entry" mode="multiple" />
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </div>


    <xsl:call-template name="menu-concept-sidebar" />
</xsl:template>
</xsl:stylesheet>
