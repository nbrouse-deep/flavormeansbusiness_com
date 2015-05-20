<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <div class="narrow">
        <img src="{$workspace}/img/soup.jpg" class="soup" />


        <div class="power-of-flavor">
            <xsl:copy-of select="value-of-flavor/entry/power-of-flavor-copy/*" />

            <img src="{$workspace}/img/soup-profit.png" />
        </div>


        <div class="food-cost">
            <img src="{$workspace}/img/one-percent.png" />

            <xsl:copy-of select="value-of-flavor/entry/food-cost-copy/*" />
        </div>


        <div class="quote-profit">
            <div class="quote">
                <xsl:copy-of select="value-of-flavor/entry/quote-copy/*" />
            </div>


            <div class="profit">
                <img src="{$workspace}/img/profit-per-case.png" />

                <xsl:copy-of select="value-of-flavor/entry/profit-copy/*" />

                <img src="{$workspace}/img/profit-per-case.png" class="mobile-only" />
            </div>
        </div>


        <div class="learn-more">
            <p>
                To learn more about how <em>Minor's</em> can help put more flavor on your menu and <br />
                drive business in your operation, please <a href="mailto:customerservice@us.nestleprofessional.com">email us</a> or call 1-800-243-8822.
            </p>
        </div>


        <div class="footnotes">
            <p>
                * Datassential, Pricing by Soup Variety 2012, Commercial Segment<br />
                ** Average food cost for top selling soups made with <em>Minor's</em> bases.<br />
                <sup>1</sup> Technomic Report, 2012<br />
            </p>
            
        </div>
    </div>
</xsl:template>

</xsl:stylesheet>
