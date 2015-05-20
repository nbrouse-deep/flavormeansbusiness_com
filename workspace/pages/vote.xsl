<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <img src="/workspace/img/vote-banner.jpg" />


    <div class="left">
        <xsl:if test="not(events/votes-new[@result = 'success'])">
            <h1>Vote For Your Favorite Story</h1>


            <p>
                The finalists have been selected. Now it’s your turn to pick a winner! 
                Just watch the videos or read the written entries, then submit your 
                vote for your favorite based on: 1) The importance of MINOR’S to the 
                individual or operation, 2) Creativity/originality in storytelling, 
                3) Entertainment value, and 4) Quality of the written or video content.  
                Limit one vote per operator per day. The winner will be announced December 17th.
            </p>


            <section id="finalist-entries">
                <xsl:apply-templates select="finalists/entry" />
            </section>


            <section id="ballot">
                <a name="vote" />

                <h2>Vote For Your Favorite Story</h2>

                <!-- missing field or already voted today -->
                <xsl:if test="events/votes-new[@result = 'error']">
                    <p class="error">
                        <xsl:value-of select="events/votes-new/message" />
                    </p>
                </xsl:if>

                <xsl:if test="not(contains(events/votes-new/message, 'once per day'))">
                    <xsl:call-template name="ballot" />
                </xsl:if>
            </section>
        </xsl:if>


        <xsl:if test="events/votes-new[@result = 'success']">
            <h1>Thank you for voting!</h1>

            <p>
                Remember, you can vote once a day through November 16th.
            </p>
        </xsl:if>
    </div>



    <div class="right">
        <nav>
            <ul>
                <xsl:for-each select="finalists/entry">
                    <li>
                        <a href="/vote/#{title/@handle}">
                            #<xsl:value-of select="position()" />
                            <xsl:text> - </xsl:text>
                            <xsl:value-of select="title" />
                        </a>
                    </li>
                </xsl:for-each>

                <li>
                    <a href="#vote">Vote</a>
                </li>

                <li>
                    <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Rules</a>
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
                #<xsl:value-of select="position()" /> - 
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
            <xsl:value-of select="job-title" />;
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



<!-- voting form -->
<xsl:template name="ballot">
    <form method="post" action="#vote">
        <xsl:for-each select="/data/finalists/entry">
            <label class="radio">
                <input type="radio" value="{@id}" name="fields[entry]" />
                Entry #<xsl:value-of select="position()" /> -
                <xsl:value-of select="title" />, by 
                <xsl:value-of select="first-name" /> 
                <xsl:text> </xsl:text>
                <xsl:value-of select="last-name" />
            </label>
        </xsl:for-each>

        <label>
            First Name:
            <input type="text" name="fields[first-name]" />
        </label>

        <label>
            Last Name:
            <input type="text" name="fields[last-name]" />
        </label>

        <label>
            Email*:
            <input type="email" name="fields[email]" required="required" />
        </label>

        <small>
            *Your privacy is important to NESTLÉ PROFESSIONAL™. We do not sell or rent your email address, or any other personal identifiable information, 
            to third-party companies. NESTLÉ PROFESSIONAL and its parent company NESTLÉ USA, may occasionally send you emails regarding product specials, promotions and information about our products.
        </small>

        <input type="submit" value="Vote" name="action[votes-new]" />
    </form>
</xsl:template>
</xsl:stylesheet>
