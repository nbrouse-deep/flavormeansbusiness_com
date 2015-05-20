<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <h1>Information At Your Service</h1>


    <div class="left">
        <p>
            For even more in-depth information and inspiration regarding <em>Minor's</em><sup>&#174;</sup> products,<br />
            you're welcome to our resources.
        </p>


        <xsl:if test="not(brochures/category[@handle = /data/params/category])">
            <ul class="buttons">
                <xsl:for-each select="brochures/category">
                    <li>
                        <a href="/brochures/{@handle}/">
                            <xsl:value-of select="@value" />
                        </a>
                    </li>
                </xsl:for-each>
            </ul>
        </xsl:if>


        <section class="brochures">
            <xsl:apply-templates select="brochures/category[@handle = /data/params/category]/entry" />
        </section>
    </div>



    <div class="sidebar">
        <h2>Downloads</h2>

        <ul>
            <xsl:for-each select="brochures/category">
                <li>
                    <xsl:if test="/data/params/category = @handle">
                        <xsl:attribute name="class">active expanded</xsl:attribute>
                    </xsl:if>

                    <a href="/brochures/{@handle}/">
                        <xsl:value-of select="@value" />
                    </a>

                    <ul>
                        <xsl:for-each select="entry">
                            <li>
                                <a href="{$workspace}{pdf/@path}/{pdf/filename}" target="_blank">
                                    <xsl:value-of select="name" />
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</xsl:template>




<xsl:template match="brochures/category/entry">
    <div>
        <xsl:attribute name="class">brochure<xsl:if test="position() mod 2 = 1"> odd</xsl:if></xsl:attribute>

        <a href="{$workspace}{pdf/@path}/{pdf/filename}" class="image">
            <img src="{$workspace}{screenshot/@path}/{screenshot/filename}" target="_blank"/>
        </a>

        <div class="right">
            <h2>
                <a href="{$workspace}{pdf/@path}/{pdf/filename}" target="_blank">
                    <xsl:value-of select="name" />
                </a>
            </h2>

            <h3>
                <a href="{$workspace}{pdf/@path}/{pdf/filename}" target="_blank">Download</a>
            </h3>
        </div>
    </div>
</xsl:template>
</xsl:stylesheet>
