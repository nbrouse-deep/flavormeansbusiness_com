<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="head.xsl" />
<xsl:import href="navigation.xsl" />
<xsl:import href="footer.xsl" />
<xsl:import href="scripts.xsl" />




<xsl:output method="xml" 
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
    omit-xml-declaration="yes" 
    indent="yes" />




<xsl:template match="/">
    <xsl:comment><![CDATA[[if lte IE 7]> <html lang="en" class="ie7"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if IE 8]> <html lang="en" class="ie8"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if IE 9]> <html lang="en" class="ie9"> <![endif]]]></xsl:comment>
    <xsl:comment><![CDATA[[if gt IE 9]><!]]></xsl:comment> <html lang="en" class="no-js"> <xsl:comment><![CDATA[<![endif]]]></xsl:comment>
        <xsl:call-template name="head" />



        <body class="{$root-page}" id="{$current-page}">
            <!-- give a special class if we're on a form's success page -->
            <xsl:attribute name="class">
                <xsl:value-of select="$root-page" />

                <xsl:if test="/data/params/success = 'success'"> success</xsl:if>
            </xsl:attribute>


            <div class="container">
                <div class="site-search">
                    <p class="see-how-fmb">
                        <a href="/battleforbocuse/"> Get inspired with finalist recipes from the <em>2014 soup contest.</em></a>
                    </p>

                    <form method="get" action="/search/">
                        <input type="search" name="keywords" placeholder="Search the site" />

                        <input type="hidden" name="sections" value="blog-menu-concepts,brochures,chefs,flavor-means-business,heritage,latin-flavors,product-categories,products,recipes,request-a-sample,the-value-of-flavor,videos,flavor-expedition" />

                        <input type="submit" value="Go" />
                    </form>
                </div>


                <div class="main">
                    <header>
                        <div class="center">
                            <a href="/" class="logo">
                                <img src="{$workspace}/img/logo.png" />
                            </a>

                            <button class="show-nav" />


                            <nav class="primary">
                                <xsl:call-template name="nav-primary" />
                            </nav>
                        </div>


                        <nav class="secondary">
                            <xsl:call-template name="nav-secondary" />
                        </nav>



                        <!-- TEST mobile nav -->
                        <div class="nav mobile-only">
                            <button class="close" />

                            <form method="get" action="/search/">
                                <input type="search" name="keywords" placeholder="Search the site" />

                                <input type="hidden" name="sections" value="blog-menu-concepts,brochures,chefs,flavor-means-business,heritage,latin-flavors,product-categories,products,recipes,request-a-sample,the-value-of-flavor,videos,flavor-expedition" />

                                <input type="submit" value="Go" />
                            </form>


                            <xsl:call-template name="nav-primary" />


                            <xsl:call-template name="nav-secondary" />


                            <ul>
                                <li>
                                    <a href="/brochures/">Brochures</a>
                                </li>
                            </ul>
                        </div>
                    </header>


                    <div class="content-modified">
                        <xsl:apply-templates select="/data" />



                        <xsl:if test="$current-page != 'contact'">
                        <div class="bocuse-contact">
                            <section class="contact">
                                <h2>Contact our Chefs</h2>


                                <img src="{$workspace}/img/chefs.jpg" />


                                <div class="left">
                                    <h3>Working hand-in-hand, mind-to-menu.</h3>

                                    <p>
                                        If you have any questions or ideas you would like to discuss 
                                        with one of our chefs, you have access to them at the following
                                        number or email address.
                                    </p>

                                    <dl>
                                        <dt>Call »</dt>

                                        <dd>
                                            <a href="tel:1-800-243-8822">1-800-243-8822</a>
                                        </dd>

                                        <dt>Email »</dt>

                                        <dd>
                                            <a href='m&#97;&#105;lto&#58;%6Di%&#54;E%6Fr&#115;c%&#54;8efs&#64;flavorm&#37;&#54;&#53;&#97;%6Es%62&#37;75&#115;&#37;6&#57;n&#101;ss&#46;com'>mino&#114;&#115;chefs&#64;&#102;la&#118;o&#114;m&#101;an&#115;&#98;&#117;&#115;ines&#115;&#46;c&#111;m</a>
                                        </dd>

                                        <dt class="chat">
                                            or
                                        </dt>

                                        <dd class="chat">
                                            <a href="http://chat11.archway.com/WebChat/Main.aspx?QueueName=CHAT-NESTLE-P">Chat live with a MINOR'S expert</a>
                                        </dd>
                                    </dl>
                                </div>
                            </section>
                            </div>
                        </xsl:if>
                    </div> <!-- /content -->
                </div> <!-- /main -->
            </div> <!-- /container -->


            <!-- utilities/footer.xsl -->
            <xsl:call-template name="footer" />


            <!-- utilities/scripts.xsl -->
            <xsl:call-template name="scripts" />


            <xsl:call-template name="finalize" />
        </body>
    </html>
</xsl:template>




<!-- navigation -->
<xsl:template match="page">
    <li>
        <xsl:attribute name="class">
            <xsl:value-of select="@handle" />

            <xsl:if test="$root-page = @handle"> active</xsl:if>
        </xsl:attribute>

        <xsl:if test="local-name(..) = 'page'">
            <a href="/{../@handle}/{@handle}/">
                <xsl:value-of select="name" />
            </a>
        </xsl:if>

        <xsl:if test="not(local-name(..) = 'page')">
            <a href="/{@handle}/">
                <xsl:value-of select="name" />
            </a>
        </xsl:if>
    </li> 
</xsl:template>



<!-- extra stuff to load after entire page -->
<xsl:template name="finalize">
</xsl:template>
</xsl:stylesheet>
