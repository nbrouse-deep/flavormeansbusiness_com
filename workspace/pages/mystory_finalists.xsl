<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <img src="/workspace/img/vote-banner.jpg" />


    <div class="left">
        <h1>Finalists' Stories</h1>


        <section id="finalist-entries">
            <xsl:apply-templates select="finalists/entry" />
        </section>
    </div>



    <div class="right">
        <nav>
            <ul>
                <xsl:for-each select="finalists/entry">
                    <li>
                        <a href="/mystory/#{headline/@handle}">
                            <xsl:value-of select="title" />
                        </a>
                    </li>
                </xsl:for-each>


                <li>
                    <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Rules and Regulations</a>
                </li>
            </ul>
        </nav>
    </div>
</xsl:template>



<!-- finalist entry details -->
<xsl:template match="finalists/entry">
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
            <xsl:copy-of select="story/*[1]" />

            <div class="more">
                <xsl:copy-of select="story/*[position() &gt; 1]" />
            </div>

            <button>Read More</button>
        </div>
    </div>
</xsl:template>
</xsl:stylesheet>
