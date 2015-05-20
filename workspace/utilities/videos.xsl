<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/format-date.xsl" />




<!-- popular, recent, tags sidebar -->
<xsl:template name="sidebar">
    <div class="sidebar">
        <ul>
            <li>
                <xsl:if test="/data/params/url-from = 'popular'">
                    <xsl:attribute name="class">active expanded</xsl:attribute>
                </xsl:if>

                <a href="/videos/?from=popular">Most Popular</a>

                <ul id="most-popular">
                    <xsl:apply-templates select="videos/entry" mode="titles">
                        <xsl:with-param name="extra-url" select="'?from=popular'" />
                        <xsl:sort select="views" data-type="number" order="descending" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li>
                <xsl:if test="/data/params/url-from = 'recent'">
                    <xsl:attribute name="class">active expanded</xsl:attribute>
                </xsl:if>

                <a href="/videos/?from=recent">Most Recent</a>

                <ul>
                    <xsl:apply-templates select="videos/entry" mode="titles">
                        <xsl:with-param name="extra-url" select="'?from=recent'" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li class="tags">
                <xsl:if test="/data/params/current-page = 'tags'">
                    <xsl:attribute name="class">active expanded</xsl:attribute>
                </xsl:if>

                <a href="#tags">Tags</a>

                <ul>
                    <xsl:apply-templates select="videos-tags/tag" />
                </ul>
            </li>
        </ul>
    </div>
</xsl:template>




<!-- videos for left side of page -->
<xsl:template match="videos/entry | videos-by-tag/entry" mode="multiple">
    <article>
        <div class="image">
            <iframe src="https://player.vimeo.com/video/{substring-after(vimeo-url, 'vimeo.com/')}?title=0&amp;byline=0&amp;portrait=0" width="510" height="290" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen="true"></iframe>
        </div>


        <div class="summary">
            <h1>
                <a href="/videos/{title/@handle}">
                    <xsl:value-of select="title" />
                </a>
            </h1>

            <p class="byline">
                <xsl:value-of select="byline" />
            </p>

            <xsl:copy-of select="description/*[1]" />
        </div>
    </article>
</xsl:template>




<!-- recent/popular articles -->
<xsl:template match="videos/entry" mode="titles">
    <li>
        <a href="/videos/{title/@handle}/">
            <xsl:value-of select="title" />
        </a>
    </li>
</xsl:template>



<!-- tag list -->
<xsl:template match="videos-tags/tag">
    <li>
        <a href="/videos/tags/{@handle}/">
            <xsl:value-of select="." />
        </a>
    </li>
</xsl:template>



<!-- page title -->
<xsl:template name="title">
    <xsl:choose>
        <!-- single videos entry -->
        <xsl:when test="/data/videos/entry[title/@handle = /data/params/video]">
            <xsl:value-of select="/data/videos/entry/title" /> | Videos
        </xsl:when>

        <xsl:when test="/data/videos-by-tag/entry">
            Videos with tag: <xsl:value-of select="/data/videos-by-tag/entry/tags/item[@handle = /data/params/tag]" /> | videos 
        </xsl:when>

        <!-- article list -->
        <xsl:otherwise>
            Chef Videos
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet>

