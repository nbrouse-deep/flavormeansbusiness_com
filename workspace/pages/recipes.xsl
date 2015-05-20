<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <div class="left">
        <img src="{$workspace}/img/dishes.jpg" />


        <div class="copy">
            <xsl:copy-of select="recipes/entry/copy/*" />
        </div>


        <ul class="links">
			<li><a href="https://flavormeansbusiness.com/latin-flavor-recipes/">Go to Latin Flavors Recipes</a>
			</li>
            <li>
               <a href="/battleforbocuse">Go to Soups With a Twist Recipes</a>
            </li>
            <li>
                <a href="http://www.nestleprofessional.com/united-states/en/Recipes/Pages/default.aspx#tab=Meal%20Types">Go to Recipes</a>
            </li>

            <li>
                <a href="/menu-concepts/">Go to Menu Concepts</a>
            </li>
        </ul>


        <div class="tags">
            <h2>Browse Menu Categories:</h2>

            <ul>
                <xsl:for-each select="menu-concepts-tags/tag">
                    <li>
                        <a href="/menu-concepts/tags/{@handle}/">
                            <xsl:value-of select="." />
                        </a>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </div>


    <xsl:call-template name="featured-sidebar" />
</xsl:template>

</xsl:stylesheet>
