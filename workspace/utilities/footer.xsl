<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:template name="footer">
    <footer class="container">
        <nav class="primary">
            <ul>
                <xsl:apply-templates select="/data/navigation/page[types//type = 'nav-primary']" />
            </ul>
        </nav>


        <nav class="secondary">
            <ul>
                <li class="blog">
                    <a href="/blog/">Chef's Blog</a>
                </li>

                <li class="offers">
                    <a href="/offers/flavor-expedition/">Offers</a>
                </li>

                <li class="recipes">
                    <a href="/recipes/">Recipes</a>
                </li>

                <li class="powerofflavor">
                    <a href="/powerofflavor/">Power of Flavor</a>
                </li>

                <li class="heritage">
                    <a href="/heritage/">Heritage</a>
                </li>

                <li class="brochures">
                    <a href="/brochures/">Brochures</a>
                </li>

              <!--  <li class="request-a-sample">
                    <a href="/offers/request-a-sample/">Request a Sample</a>
                </li> -->

                <li class="contact">
                    <a href="/contact/">Contact Us</a>
                </li>
            </ul>
        </nav>


        <p class="top">
            <a href="#">Back to top menu</a>
        </p>


        <small>All trademarks and other intellectual properties on this site are owned by Société des Produits Nestlé S.A., Vevey, Switzerland or are used with permission.</small>
<img src="https://s.amazon-adsystem.com/iui3?d=3p-hbg&amp;ex-src=www.flavormeansbusiness.com&amp;ex-hargs=v%3D1.0%3Bc%3D9940702346028%3Bp%3D6c72a970-b4d3-0249-7bb8-4216b22b922d" width="1" height="1" border="0" />
</footer>
</xsl:template>
</xsl:stylesheet>
