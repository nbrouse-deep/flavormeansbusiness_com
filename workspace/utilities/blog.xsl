<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/format-date.xsl" />




<!-- blog sidebar -->
<xsl:template name="blog-sidebar">
    <div class="sidebar">
        <h2>Sort Blog Articles</h2>

        <ul>
            <li>
                <xsl:attribute name="class">popular <xsl:if test="/data/params/url-from = 'popular'">active expanded</xsl:if></xsl:attribute>

                <a href="/blog/?from=popular">Popular</a>

                <ul id="most-popular">
                    <xsl:apply-templates select="blog/entry" mode="headlines">
                        <xsl:with-param name="extra-url" select="'?from=popular'" />
                        <xsl:sort select="views" data-type="number" order="descending" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li>
                <xsl:attribute name="class">recent <xsl:if test="/data/params/url-from = 'recent'">active expanded</xsl:if></xsl:attribute>

                <a href="/blog/?from=recent">Recent</a>

                <ul>
                    <xsl:apply-templates select="blog/entry" mode="headlines">
                        <xsl:with-param name="extra-url" select="'?from=recent'" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li>
                <xsl:attribute name="class">tags <xsl:if test="/data/params/current-page = 'tags'">active</xsl:if></xsl:attribute>

                <a href="#tags">Tags</a>

                <ul>
                    <xsl:apply-templates select="blog-tags/tag" />
                </ul>
            </li>
        </ul>
    </div>
</xsl:template>




<!-- menu concept sidebar-->
<xsl:template name="menu-concept-sidebar">
    <div class="sidebar">
        <h2>Sort Menu Concepts</h2>

        <ul>
            <li>
                <xsl:attribute name="class">popular <xsl:if test="/data/params/url-from = 'popular'">active expanded</xsl:if></xsl:attribute>

                <a href="/menu-concepts/?from=popular">Popular</a>

                <ul id="most-popular">
                    <xsl:apply-templates select="menu-concepts/entry" mode="headlines">
                        <xsl:with-param name="extra-url" select="'?from=popular'" />
                        <xsl:sort select="views" data-type="number" order="descending" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li>
                <xsl:attribute name="class">recent <xsl:if test="/data/params/url-from = 'recent'">active expanded</xsl:if></xsl:attribute>

                <a href="/menu-concepts/?from=recent">Recent</a>

                <ul>
                    <xsl:apply-templates select="menu-concepts/entry" mode="headlines">
                        <xsl:with-param name="extra-url" select="'?from=recent'" />
                    </xsl:apply-templates>
                </ul>
            </li>

            <li class="tags">
                <!-- <xsl:attribute name="class">tags <xsl:if test="/data/params/current-page = 'tags'">active expanded</xsl:if></xsl:attribute> -->

                <a href="#tags">Tags</a>

                <ul>
                    <xsl:apply-templates select="menu-concepts-tags/tag" />
                </ul>
            </li>
        </ul>
    </div>
</xsl:template>




<!-- show a single blog entry -->
<xsl:template match="blog/entry | menu-concepts/entry" mode="single">
    <xsl:if test="photo">
        <img src="{$workspace}{photo/@path}/{photo/filename}" class="photo" />
    </xsl:if>


    <article class="single">
        <div class="image">
            <xsl:for-each select="/data/chefs/entry[@id = current()/author/item/@id]">
                <img src="{$workspace}{biography-photo/@path}/{biography-photo/filename}" />
            </xsl:for-each>
        </div>

        <div class="details">
            <h3 class="date">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date" />
                    <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                </xsl:call-template>
            </h3>

            <h1>
                <xsl:value-of select="headline" />
            </h1>

            <h3 class="author">
                from 
                <xsl:if test="author/item/@handle != 'minors'">
                    Chef 
                </xsl:if>
                <xsl:value-of select="author/item" />
            </h3>

            <div class="copy">
                <xsl:copy-of select="copy/*" />
            </div>

            <div class="social">
                <p>Make flavor more extraordinary with Minor's<sup>&#174;</sup></p>

                <xsl:variable name="link" select="concat($root, '/', local-name(..), '/', headline/@handle, '/')" />

                <ul>
                    <li class="facebook">
                        <a href="https://facebook.com/sharer/sharer.php?u={$link}" target="_blank">Facebook</a>
                    </li>

                    <li class="twitter">
                        <a href="http://twitter.com/share?url={$link}&amp;text={headline}" target="_blank">Twitter</a>
                    </li>

                    <li class="email">
                        <a href="mailto:?subject={headline}&amp;body={$link}" target="_blank">Email</a>
                    </li>
                </ul>
            </div>


            <xsl:if test="following-sibling::node()/headline">
                <div class="older">
                    <a href="/{local-name(..)}/{following-sibling::entry[1]/headline/@handle}/">
                        <xsl:value-of select="following-sibling::entry[1]/headline" />
                    </a>
                </div>
            </xsl:if>

            <xsl:if test="preceding-sibling::node()/headline">
                <div class="newer">
                    <a href="/{local-name(..)}/{preceding-sibling::entry[1]/headline/@handle}/">
                        <xsl:value-of select="preceding-sibling::entry[1]/headline" />
                    </a>
                </div>
            </xsl:if>
        </div>
    </article>
</xsl:template>




<!-- article/menu concept summaries -->
<xsl:template match="blog/entry | menu-concepts/entry" mode="multiple">
    <xsl:param name="extra" select="''" />

    <article class="summary">
        <div class="image">
            <a href="/{local-name(..)}/{headline/@handle}/">
                <xsl:if test="photo and not(sticky = 'Yes')">
                    <img src="/image/2/376/376/5{photo/@path}/{photo/filename}" />
                </xsl:if>

                <xsl:if test="not(photo) or sticky = 'Yes'">
                    <img src="{$workspace}{/data/chefs/entry[@id = current()/author/item/@id]/biography-photo/@path}/{/data/chefs/entry[@id = current()/author/item/@id]/biography-photo/filename}" />
                </xsl:if>
            </a>
        </div>

        <div class="details">
            <h3 class="date">
                <xsl:call-template name="format-date">
                    <xsl:with-param name="date" select="date" />
                    <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                </xsl:call-template>
            </h3>

            <h2>
                <a href="/{local-name(..)}/{headline/@handle}/">
                    <xsl:value-of select="headline" />
                </a>
            </h2>

            <h3 class="author">
                from 
                <xsl:if test="author/item/@handle != 'minors'">
                    Chef 
                </xsl:if>
                <xsl:value-of select="author/item" />
            </h3>

            <div class="copy">
                <xsl:copy-of select="copy/*[1]" />
            </div>

            <p class="continue">
                <a href="/{local-name(..)}/{headline/@handle}/">
                    Continue reading...
                </a>
            </p>
        </div>
    </article>
</xsl:template>




<!-- headlines only (usually for sidebar) -->
<xsl:template match="blog/entry | menu-concepts/entry" mode="headlines">
    <xsl:param name="limit" select="'5'" />
    <xsl:param name="extra-url" select="''" />

    <xsl:if test="position() &lt; ($limit + 1)">
        <li>
            <xsl:if test="/data/params/article = headline/@handle">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>

            <a href="/{local-name(..)}/{headline/@handle}/{$extra-url}">
                <xsl:value-of select="headline" />
            </a>
        </li>
    </xsl:if>
</xsl:template>




<!-- tag list -->
<xsl:template match="blog-tags/tag | menu-concepts-tags/tag">
    <li>
        <xsl:if test="/data/params/tag = @handle">
            <xsl:attribute name="class">active</xsl:attribute>
        </xsl:if>

        <a href="/{$root-page}/tags/{@handle}/">
            <xsl:value-of select="." />
        </a>
    </li>
</xsl:template>




<!-- page title -->
<xsl:template name="title">
    <xsl:choose>
        <!-- single blog entry -->
        <xsl:when test="/data/blog/entry[headline/@handle = /data/params/article]">
            <xsl:value-of select="/data/blog/entry[headline/@handle = /data/params/article]/headline" /> | Blog
        </xsl:when>

        <xsl:when test="/data/blog-by-tag/entry">
            Articles with tag: <xsl:value-of select="/data/blog-by-tag/entry/tags/item[@handle = /data/params/tag]" /> | Blog 
        </xsl:when>

        <!-- single blog entry -->
        <xsl:when test="/data/menu-concepts/entry[headline/@handle = /data/params/article]">
            <xsl:value-of select="/data/menu-concepts/entry[headline/@handle = /data/params/article]/headline" /> | Menu Concepts
        </xsl:when>

        <xsl:when test="/data/menu-concepts-by-tag/entry">
            Menu Concepts with tag: <xsl:value-of select="/data/menu-concepts-by-tag/entry/tags/item[@handle = /data/params/tag]" /> | Menu Concepts
        </xsl:when>

        <xsl:otherwise>
            <xsl:value-of select="/data/params/page-title" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>



<!-- facebook -->
<xsl:template name="extra-meta">
    <xsl:for-each select="/data/menu-concepts/entry[headline/@handle = /data/params/article] | /data/blog/entry[headline/@handle = /data/params/article]">
        <xsl:if test="photo">
            <meta property="og:image" content="{$workspace}{photo/@path}/{photo/filename}" />
        </xsl:if>

        <xsl:if test="not(photo)">
            <xsl:for-each select="/data/chefs/entry[@id = current()/author/item/@id]">
                <meta property="og:image" content="{$workspace}{biography-photo/@path}/{biography-photo/filename}" />
            </xsl:for-each>
        </xsl:if>

        <meta property="og:title" content="{headline}" />
        <meta property="og:site_name" content="Minor's® - Flavor Means Business" />
        <meta property="og:description" content="{copy/*[1]/text()}" />
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>

