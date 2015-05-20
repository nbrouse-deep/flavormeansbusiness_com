<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <!-- show all chefs -->
    <xsl:if test="not(chefs/entry[name/@handle = /data/params/chef])">
        <div class="left">
            <img src="{$workspace}/img/chef-group.jpg" class="banner" />


            <section class="meet-your-team">
                <h1>Meet Your Chef to Chef Team</h1>

                <p>
                    As Corporate Chefs for <em>Minor's</em><sup>&#174;</sup>, every one of our world-class professionals 
                    helps foodservice operators optimize the use of <em>Minor's</em> products in their kitchens. They 
                    also provide hands-on demonstrations, lectures, as well as front- and back-of-the-house 
                    assistance, which includes recipe development for all segments of the food industry.
                </p>
            </section>


            <section class="chefs">
                <xsl:apply-templates select="chefs/entry[listed = 'Yes']" mode="multiple" />
            </section>
        </div>
    </xsl:if>



    <!-- show a single chef -->
    <xsl:if test="chefs/entry[name/@handle = /data/params/chef]">
        <div class="left single-chef">
            <xsl:apply-templates select="chefs/entry[name/@handle = /data/params/chef]" mode="single" />
        </div>
    </xsl:if>


    <!-- chef sidebar -->
    <div class="sidebar all-chefs">
        <xsl:attribute name="class">
            sidebar all-chefs <xsl:if test="chefs/entry[name/@handle = /data/params/chef]">single-view</xsl:if>
        </xsl:attribute>


        <h2>Related Chef Links</h2>

        <ul>
            <xsl:apply-templates select="chefs/entry[listed = 'Yes']" mode="sidebar" />
        </ul>
    </div>
</xsl:template>




<!-- show all chefs -->
<xsl:template match="chefs/entry" mode="multiple">
    <div>
        <div class="image">
            <img src="{$workspace}{biography-photo/@path}/{biography-photo/filename}" />

            <a href="/meet-the-chefs/{name/@handle}/">
                <span>
                    Meet 
                    <span class="name">
                        <xsl:value-of select="name" />
                    </span>
                </span>
            </a>
        </div>

        <p>
            <a href="/meet-the-chefs/{name/@handle}/">
                <xsl:if test="short-name">
                    <xsl:value-of select="short-name" />
                </xsl:if>

                <xsl:if test="not(short-name)">
                    <xsl:value-of select="name" />
                </xsl:if>
            </a>
        </p>
    </div>
</xsl:template>




<!-- show a single chef -->
<xsl:template match="chefs/entry" mode="single">
    <div class="image headshot">
        <img src="{$workspace}{biography-photo/@path}/{biography-photo/filename}" />
    </div>

    <div class="image action">
        <img src="{$workspace}{action-photo/@path}/{action-photo/filename}" />
    </div>

    <h1>
        <xsl:value-of select="name" />
    </h1>

    <section class="short-bio">
        <xsl:copy-of select="short-biography/*" />
    </section>

    <section class="about">
        <xsl:copy-of select="about/*" />
    </section>
</xsl:template>



<!-- chef list for sidebar -->
<xsl:template match="chefs/entry" mode="sidebar">
    <li>
        <xsl:if test="/data/params/chef = name/@handle">
            <xsl:attribute name="class">active expanded</xsl:attribute>
        </xsl:if>

        <a href="/meet-the-chefs/{name/@handle}/">
            <xsl:value-of select="name" />
        </a>

        <ul>
            <li>
                <xsl:if test="/data/params/chef = name/@handle">
                    <xsl:attribute name="class">active</xsl:attribute>
                </xsl:if>

                <a href="/meet-the-chefs/{name/@handle}/">
                    Chef Biography
                </a>
            </li>

            <xsl:apply-templates select="/data/blog/entry[author/item/@id = current()/@id][position() &lt; 6]" />

            <xsl:apply-templates select="/data/menu-concepts/entry[author/item/@id = current()/@id][position() &lt; 6]" />
        </ul>
    </li>
</xsl:template>




<!-- blog posts and menu concepts by author for sidebar -->
<xsl:template match="blog/entry | menu-concepts/entry">
    <li>
        <a href="/{local-name(..)}/{headline/@handle}">
            <span class="headline">
                <xsl:value-of select="headline" />
            </span>

            <xsl:text> </xsl:text>

            <xsl:if test="menu-concept = 'Yes'">(Menu Concept)</xsl:if>
            <xsl:if test="not(menu-concept = 'Yes')">(Blog)</xsl:if>
        </a>
    </li>
</xsl:template>




<!-- videos by author for sidebar -->
<xsl:template match="videos-grouped-by-author/author/entry">
    <li>
        <a href="/videos/{title/@handle}">
            <xsl:value-of select="title" /> | VIDEOS
        </a>
    </li>
</xsl:template>
</xsl:stylesheet>
