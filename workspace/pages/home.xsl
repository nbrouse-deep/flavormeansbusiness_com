<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />

<xsl:import href="../utilities/format-date.xsl" />




<xsl:template match="/data">
    <!-- home slideshow -->
    <section class="products-cta">
        <h1>Flavor isn't measured like<br />other parts of the business.</h1>

        <div class="latin-flavors">
            <img src="{$workspace}/img/latin-flavors-home-callout.png" />

            <h2>Latin Flavors</h2>

            <a href="/products/latin-flavors/" class="latin-flavors">
                <span>View our</span> Latin Flavors
            </a>
        </div>


        <div class="gluten-free">
            <img src="{$workspace}/img/pozole_glutenfree.png" />

            <h2>Gluten Free </h2>

            <a href="/products/gluten-free/" class="gluten-free">
                <span>See our</span> Gluten Free Products
            </a>
        </div>
    </section>


    <div class="too-short">
        <a href="#">Explore More Content</a>
    </div>


    <div class="featured">
        <div class="center">
            <!-- menu concepts -->
            <section class="menu-concept">
                <h2>Menu Concepts</h2>

                <div class="image">
                    <xsl:if test="featured-menu-concept/entry/photo">
                        <img src="/image/2/680/450/5{featured-menu-concept/entry/photo/@path}/{featured-menu-concept/entry/photo/filename}" />
                    </xsl:if>

                    <xsl:if test="not(featured-menu-concept/entry/photo)">
                        <xsl:for-each select="chefs/entry[@id = /data/featured-menu-concept/entry/author/item/@id]"> <!-- context -->
                            <img src="/image/2/680/450/5{action-photo/@path}/{action-photo/filename}" />
                        </xsl:for-each>
                    </xsl:if>

                    <span>View this Menu Concept</span>
                </div>

                <h4>
                    by
                    <xsl:if test="featured-menu-concept/entry/author/item/@handle != 'minors'">
                        Chef 
                    </xsl:if>

                    <xsl:value-of select="featured-menu-concept/entry/author/item" /> |

                    <xsl:call-template name="format-date">
                        <xsl:with-param name="date" select="featured-menu-concept/entry/date" />
                        <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                    </xsl:call-template>
                </h4>

                <h3>
                    <a href="/menu-concepts/{featured-menu-concept/entry/headline/@handle}/">
                        <xsl:value-of select="featured-menu-concept/entry/headline" /> 
                    </a>
                </h3>
            </section>



            <!-- chef's blog -->
            <section class="blog">
                <h2>Chef's Blog</h2>

                <div class="image">
                    <xsl:if test="featured-blog/entry/photo">
                        <img src="/image/2/680/450/5{featured-blog/entry/photo/@path}/{featured-blog/entry/photo/filename}" />
                    </xsl:if>

                    <xsl:if test="not(featured-blog/entry/photo)">
                        <xsl:for-each select="chefs/entry[@id = /data/featured-blog/entry/author/item/@id]"> <!-- context -->
                            <img src="/image/2/680/450/5{biography-photo/@path}/{biography-photo/filename}" />
                        </xsl:for-each>
                    </xsl:if>

                    <span>View this Article</span>
                </div>

                <h4>
                    by
                    <xsl:if test="featured-blog/entry/author/item/@handle != 'minors'">
                        Chef 
                    </xsl:if>

                    <xsl:value-of select="featured-blog/entry/author/item" /> |

                    <xsl:call-template name="format-date">
                        <xsl:with-param name="date" select="featured-blog/entry/date" />
                        <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                    </xsl:call-template>
                </h4>

                <h3>
                    <a href="/blog/{featured-blog/entry/headline/@handle}/">
                        <xsl:value-of select="featured-blog/entry/headline" /> 
                    </a>
                </h3>
            </section>



            <!-- offer -->
            <section class="offer">
                <h2>Offers</h2>

                <div class="image">
                    <img src="/image/2/680/450/5{home-featured/entry/featured-offer-image/@path}/{home-featured/entry/featured-offer-image/filename}" />

                    <span>View this Offer</span>
                </div>

                <h4>
                    &#160;
                </h4>

                <h3>
                    <a href="{home-featured/entry/featured-offer-url}">
                        <xsl:value-of select="home-featured/entry/featured-offer-title" />
                    </a>
                </h3>
            </section>
        </div>
    </div>



    <section class="chefs">
        <div class="center">
            <h2>Meet Our Chefs</h2>

            <a href="/meet-the-chefs/" class="see-all">See all <xsl:value-of select="count(chefs/entry[not(listed = 'No')])" /> Chefs</a>

            <div class="slides">
                <xsl:apply-templates select="chefs/entry[not(listed = 'No')]" />
            </div>

            <nav>
                <div class="filmstrip">
                    <xsl:for-each select="chefs/entry[not(listed = 'No')]">
                        <a href="#" />
                    </xsl:for-each>
                </div>

                <div class="mobile-nav">
                    <a href="#" class="prev">Previous</a>

                    <a href="#" class="next">Next</a>
                </div>
            </nav>

        </div>
    </section>



    <section class="featured-video">
        <div class="center">
            <h2>Watch Chef Videos</h2>

            <xsl:for-each select="featured-video/entry">
                <div class="left">
                    <iframe src="https://player.vimeo.com/video/{substring-after(vimeo-url, 'vimeo.com/')}?title=0&amp;byline=0&amp;portrait=0" width="560" height="315" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen="true"></iframe>
                </div>


                <div class="right">
                    <h3>Featured Video</h3>

                    <div class="details">
                        <h4>
                            <xsl:value-of select="title" />
                        </h4>

                        <h5>
                            <xsl:value-of select="subtitle" />
                        </h5>

                        <p>
                            <xsl:value-of select="byline" />
                        </p>
                    </div>

                    <div class="description">
                        <xsl:copy-of select="description/*" />
                    </div>

                    <a href="/videos/" class="see-all">See All Videos</a>
                </div>
            </xsl:for-each>
        </div>
    </section>



    <section class="calls-to-action">
        <div class="center">
            <xsl:apply-templates select="calls-to-action/entry" />
        </div>
    </section>
</xsl:template>




<xsl:template match="chefs/entry">
    <div class="chef">
        <div class="left">
            <div class="image">
                <img src="{$workspace}{biography-photo/@path}/{biography-photo/filename}" />
            </div>

            <a href="/meet-the-chefs/{name/@handle}/" class="meet">Meet 
                <span class="name">
                    <xsl:value-of select="name" />
                </span>
            </a>
        </div>

        <div class="right">
            <h3>
                <xsl:value-of select="name" />
            </h3>

            <div>
                <xsl:attribute name="class">short-bio<xsl:if test="not(/data/menu-concepts/entry[author/item/@id = current()/@id and photo])"> expand</xsl:if></xsl:attribute>

                <xsl:copy-of select="short-biography/*" />
            </div>

            <xsl:if test="/data/menu-concepts//entry[author/item/@id = current()/@id]/photo">
                <div class="latest-menu-concept">
                    <xsl:for-each select="/data/menu-concepts/entry[author/item/@id = current()/@id and photo][1]"> <!-- context -->
                        <div class="image">
                            <xsl:if test="photo">
                                <img src="{$workspace}{photo/@path}/{photo/filename}" />
                            </xsl:if>
                            <xsl:if test="not(photo)">
                                <img src="http://placehold.it/185x100" /> <!-- DEBUG -->
                            </xsl:if>
                        </div>

                        <span class="date">
                            <xsl:call-template name="format-date">
                                <xsl:with-param name="date" select="date" />
                                <xsl:with-param name="format" select="'%m+; %d;, %y+;'" />
                            </xsl:call-template>
                        </span>

                        <h4>
                            <a href="/menu-concepts/{headline/@handle}/">
                                <xsl:value-of select="headline" />
                            </a>
                        </h4>

                        <!--
                        <ul class="tags">
                            <xsl:for-each select="tags/item">
                                <li>
                                    <a href="/menu-concepts/tags/{@handle}/">
                                        <xsl:value-of select="." />
                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                        -->
                    </xsl:for-each>
                </div>
            </xsl:if>

            <p class="full-bio">
                <a href="/meet-the-chefs/{name/@handle}/">See full bio</a>
            </p>
        </div>
        
        <a href="#" class="show-hide">Show</a>
    </div>
</xsl:template>




<xsl:template match="calls-to-action/entry">
    <div>
        <xsl:if test="position() = 1">
            <xsl:attribute name="class">active</xsl:attribute>
        </xsl:if>

        <h2>
            <xsl:value-of select="title" />
        </h2>

        <div class="more">
            <img src="{$workspace}{image/@path}/{image/filename}" />

            <div class="copy">
                <xsl:copy-of select="copy/*" />

                <a href="{link-url}">
                    <xsl:value-of select="link-label" />
                </a>
            </div>
        </div>
    </div>
   <!-- <p><a style="display:none;" class='inline' href="#inline_content">Inline HTML</a></p> -->
 <div style='display:none'>
      <div class="inline" id='inline_content' style='background:#fff;'>
      <a href="http://www.flavormeansbusiness.com/battleforbocuse" target="_blank" ><img id="class" src="http://www.flavormeansbusiness.com/workspace/assets/Theres-not-much-time.png"/></a>
      </div>
    </div>
</xsl:template>
</xsl:stylesheet>
