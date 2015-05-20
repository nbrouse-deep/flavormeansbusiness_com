<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <h1>Depart from the Ordinary</h1>

    <div class="left">
        <p class="experience">Experience a Flavor Expedition with monthly MINOR'S<sup>&#174;</sup> Recipes and Demo Videos</p>


        <section class="video">
            <xsl:if test="flavor-expedition-videos/entry[headline/@handle = /data/params/video]">
                <xsl:apply-templates select="flavor-expedition-videos/entry[headline/@handle = /data/params/video]" />
            </xsl:if>

            <xsl:if test="not(flavor-expedition-videos/entry[headline/@handle = /data/params/video])">
                <xsl:apply-templates select="flavor-expedition-videos/entry[1]" />
            </xsl:if>
        </section>

        <p class="callout">
            <xsl:value-of select="flavor-expedition-videos-content/entry/callout" />
        </p>


        <!--
        <div class="referral">
            <h2>
                Did someone refer you?
            </h2>

            <p>
                Share this page with a friend, and you’ll receive an extra sweepstakes entry when they sign up! 
            </p>

            <a href="mailto:?subject=MINOR%27S%20Virtual%20Flavor%20Expedition&amp;body=I%20thought%20you%20might%20be%20interested%20in%20signing%20up%20for%20monthly%20virtual%20flavor%20expedition%20emails%20from%20MINOR%E2%80%99s%C2%AE.%20Each%20one%20features%20inspiring%20monthly%20recipes%20and%20demo%20videos.%0A%0ASign%20Up%20Now%3A%0A%0Ahttp%3A%2F%2Fflavormeansbusiness.com%2Foffers%2Fflavor-expedition%2F%3Freferral%3D{/data/params/url-email}" class="button" target="_blank">Share with Friend</a>
        </div>
        -->
    </div>


    <div class="sidebar">
        <h2>Flavor Expedition Archives</h2>

        <ul>
            <xsl:for-each select="flavor-expedition-videos/entry">
                <li>
                    <xsl:if test="/data/params/video = headline/@handle">
                        <xsl:attribute name="class">active</xsl:attribute>
                    </xsl:if>

                    <xsl:if test="not(/data/flavor-expedition-videos/entry[headline/@handle = /data/params/video]) and position() = 1">
                        <xsl:attribute name="class">active</xsl:attribute>
                    </xsl:if>

                    <a href="/offers/flavor-expedition/videos/{headline/@handle}/">
                        <xsl:if test="sidebar-caption">
                            <xsl:value-of select="sidebar-caption" />
                        </xsl:if>

                        <xsl:if test="not(sidebar-caption)">
                            <xsl:value-of select="headline" />
                        </xsl:if>
                    </a>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</xsl:template>



<xsl:template match="flavor-expedition-videos/entry">
    <h2>
        This Month's Featured Recipe: <xsl:value-of select="headline" />
    </h2>


    <iframe src="http://player.vimeo.com/video/{substring-after(vimeo-url, 'vimeo.com/')}?title=0&amp;byline=0&amp;portrait=0" width="510" height="290" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen="true"></iframe>


    <div class="description">
        <img src="{$workspace}{image/@path}/{image/filename}" />

        <xsl:copy-of select="description/*" />

        <p class="download">
            <a href="{$workspace}{recipe-link/@path}/{recipe-link/filename}">Download the Recipe</a>
        </p>
    </div>
</xsl:template>




<!-- lightbox -->
<xsl:template name="finalize">
    <xsl:if test="/data/params/url-success">
        <div class="lightbox">
            <div class="window">
                <h2>Thanks for signing up</h2>

                <div class="copy">
                    <p>
                        <a href="#">View recipes and demo videos.</a>
                    </p>
                </div>


                <div class="buttons">
                    <button class="see-recipes">See recipes</button>
                </div>

                <button class="close">X</button>
            </div>
        </div>
    </xsl:if>
</xsl:template>
</xsl:stylesheet>
