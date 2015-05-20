<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:import href="../utilities/format-date.xsl" />




<xsl:template name="featured-sidebar">
    <div class="featured sidebar">
        <section class="menu-concept">
            <h2>Menu Concepts</h2>

            <div class="image">
                <a href="/blog/{featured-menu-concept/entry/headline/@handle}/">
                    <xsl:if test="featured-menu-concept/entry/photo">
                        <img src="/image/2/680/450/5{featured-menu-concept/entry/photo/@path}/{featured-menu-concept/entry/photo/filename}" />
                    </xsl:if>

                    <xsl:if test="not(featured-menu-concept/entry/photo)">
                        <xsl:for-each select="chefs/entry[@id = /data/featured-menu-concept/entry/author/item/@id]"> <!-- context -->
                            <img src="/image/2/680/450/5{action-photo/@path}/{action-photo/filename}" />
                        </xsl:for-each>
                    </xsl:if>

                    <span>View this Menu Concept</span>
                </a>
            </div>

            <h4>
                by
                <xsl:if test="featured-menu-concept/entry/author/item/@handle != 'minors'">
                    Chef 
                </xsl:if>

                <xsl:value-of select="featured-menu-concept/entry/author/item" /> |

                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="featured-menu-concept/entry/date" />
                    <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                </xsl:call-template>
            </h4>

            <h3>
                <a href="/blog/{featured-menu-concept/entry/headline/@handle}/">
                    <xsl:value-of select="featured-menu-concept/entry/headline" /> 
                </a>
            </h3>
        </section>



        <!-- chef's blog -->
        <section class="blog">
            <h2>Chef's Blog</h2>

            <div class="image">
                <a href="/blog/{featured-blog/entry/headline/@handle}/">
                    <xsl:if test="featured-blog/entry/photo">
                        <img src="/image/2/680/450/5{featured-blog/entry/photo/@path}/{featured-blog/entry/photo/filename}" />
                    </xsl:if>

                    <xsl:if test="not(featured-blog/entry/photo)">
                        <xsl:for-each select="chefs/entry[@id = /data/featured-blog/entry/author/item/@id]"> <!-- context -->
                            <img src="/image/2/680/450/5{biography-photo/@path}/{biography-photo/filename}" />
                        </xsl:for-each>
                    </xsl:if>

                    <span>View this Article</span>
                </a>
            </div>

            <h4>
                by
                <xsl:if test="featured-blog/entry/author/item/@handle != 'minors'">
                    Chef 
                </xsl:if>

                <xsl:value-of select="featured-blog/entry/author/item" /> |

                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="featured-blog/entry/date" />
                    <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                </xsl:call-template>
            </h4>

            <h3>
                <a href="/blog/{featured-blog/entry/headline/@handle}/">
                    <xsl:value-of select="featured-blog/entry/headline" /> 
                </a>
            </h3>
        </section>



        <!-- offer -->
        <section class="offer">
            <h2>Offer</h2>

            <div class="image">
                <a href="{home-featured/entry/featured-offer-url}">
                    <img src="/image/2/680/450/2{home-featured/entry/featured-offer-image/@path}/{home-featured/entry/featured-offer-image/filename}" />

                    <span>View this Offer</span>
                </a>
            </div>

            <h3>
                <a href="{home-featured/entry/featured-offer-url}">
                    <xsl:value-of select="home-featured/entry/featured-offer-title" />
                </a>
            </h3>
        </section>
    </div>
</xsl:template>

</xsl:stylesheet>
