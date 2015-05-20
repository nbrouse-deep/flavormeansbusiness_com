<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <img src="/workspace/img/winner-banner.jpg" />


    <div class="left">
        <xsl:copy-of select="winner/entry/copy/*" />


        <section id="finalist-entries">
            <xsl:apply-templates select="stories-winner/entry" />
        </section>
    </div>



    <div class="right">
        <nav>
            <ul>
                <li>
                    <a href="/mystory/finalists/">Other Finalists</a>
                </li>
                <li>
                    <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Rules and Regulations</a>
                </li>
            </ul>
        </nav>
    </div>
</xsl:template>



<!-- finalist entry details -->
<xsl:template match="stories-winner/entry">
    <div>
        <a name="{title/@handle}" />
        <div>
            <!-- headers with subtitles need a special class so we can squish things together -->
            <xsl:attribute name="class">
                header
                <xsl:if test="subtitle"> longer</xsl:if>
            </xsl:attribute>

            <h2>
                <xsl:value-of select="title" />
            </h2>

            <xsl:if test="subtitle">
                <h3>
                    <xsl:value-of select="subtitle" />
                </h3>
            </xsl:if>
        </div>

        <p>
            Submitted by 
            <xsl:value-of select="first-name" />
            <xsl:text> </xsl:text>
            <xsl:value-of select="last-name" />,
            <xsl:value-of select="operation-name" />;
            <xsl:value-of select="city" />,
            <xsl:value-of select="state" />
        </p>

        <div class="story">
            <xsl:copy-of select="story/*" />
        </div>
    </div>
</xsl:template>
</xsl:stylesheet>
