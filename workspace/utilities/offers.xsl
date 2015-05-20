<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template name="sidebar">
    <div class="sidebar">
        <h2>Current Offers</h2>

        <ul>
            <!-- Request a Sample -->
           <!-- <li>
                <xsl:if test="$current-page = 'request-a-sample'">
                    <xsl:attribute name="class">active expanded</xsl:attribute>
                </xsl:if>

                <a href="/offers/request-a-sample/">Request a Sample</a>

                <ul>
                    <li>
                        <xsl:if test="$current-page = 'request-a-sample'">
                            <xsl:attribute name="class">active</xsl:attribute>
                        </xsl:if>

                        <a href="/offers/request-a-sample/">Sign Up</a>
                    </li>
                </ul>
            </li> -->

           <!--  <li class="no-children">
                <a href="{$workspace}/assets/pdf/Minors-Latin-Flavors-Free-Case-Rebate-Fillable-With-Adobe-Reader.pdf">Download the Latin Flavors Free Case Rebate</a>
            </li> -->
            <!-- <li class="no-children">
                <a href="/battleforbocuse">Enter the MINOR'S Soup Recipe Contest and you could win a trip to France</a>
            </li> -->
        </ul>
    </div>
</xsl:template>
</xsl:stylesheet>