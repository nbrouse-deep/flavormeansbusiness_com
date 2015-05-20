<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



    <xsl:import href="../utilities/master.xsl" />



<xsl:template match="/data">
    <img src="{$workspace}/img/banner-world-of-flavor.jpg" />


    <div class="left">
        <xsl:copy-of select="rules-and-regulations/entry/copy/*" />
    </div>


    <div class="right">
        <nav>
            <ul>
                <li>
                    <a href="/worlds-of-flavor/#how-it-works">How it Works</a>
                </li>
                <li>
                    <a href="/worlds-of-flavor/#sign-up">Sign Up</a>
                </li>
                <li>
                    <a href="/worlds-of-flavor/rules">Rules and Regulations</a>
                </li>
            </ul>
        </nav>
    </div>
</xsl:template>

</xsl:stylesheet>