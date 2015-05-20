<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <img src="/workspace/img/story-banner.jpg" class="story-banner" />



    <xsl:if test="not(events/stories-new[@result = 'success'])">
        <div class="left">
            <section id="intro">
                <xsl:copy-of select="share-your-story/entry/introduction-copy/*" />
                <img src="/workspace/img/pan.jpg" />
            </section>


            <section id="how-it-works">
                <a name="how-it-works" />
                <h2>How it Works</h2>
                <xsl:copy-of select="share-your-story/entry/how-it-works-copy/*" />
                <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">See rules for full requirements and details.</a>
                <img src="/workspace/img/spoon.jpg" />
            </section>


            <section id="share-your-story">
                <a name="share-your-story" />
                <h2>Share your Story</h2>
                <xsl:copy-of select="share-your-story/entry/share-your-story-copy/*" />
            </section>


            <a name="form" />
            <xsl:if test="events/stories-new[@result = 'error']">
                <p class="error">
                    <strong>There were errors with your submission:</strong><br />
                    <xsl:for-each select="events/stories-new/*[@type = 'missing' or @type = 'invalid']">
                        <xsl:value-of select="@message" /><br />
                    </xsl:for-each>
                </p>
            </xsl:if>
            <xsl:call-template name="form" />
            <section id="mobile">
                <p>
                    Please visit <a href="http://flavormeansbusiness.com/mystory">flavormeansbusiness.com/mystory</a> on a personal computer to submit videos for this promotion.
                </p>
            </section>
        </div>



        <div class="right">
            <nav>
                <ul>
                    <li>
                        <a href="/mystory/#how-it-works">How it works</a>
                    </li>
                    <li>
                        <a href="/mystory/#share-your-story">Share your story</a>
                    </li>
                    <li>
                        <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Rules</a>
                    </li>
                </ul>
            </nav>
        </div>
    </xsl:if>


    <xsl:if test="events/stories-new[@result = 'success']">
        <h1 class="thank-you">
            Your submission has been received.<br />
            Thank you for sharing your story.
        </h1>
    </xsl:if>
</xsl:template>





<xsl:template name="form">
    <form method="post" action="#form" enctype="multipart/form-data">
        <label class="title">Title:
            <input name="fields[title]" type="text" placeholder="[Note the highlights of your story]" value="{events/stories-new/post-values/title}" />
        </label>


        <fieldset class="write">
            <label class="write-your-story">
                <input type="radio" name="derp" />
                Write your story <span class="hint">(Tell us your story in 1,000 words or less.)</span>
            </label>
            <label>Story:
                <textarea name="fields[story]" placeholder="[Note the highlights of your story, or upload your written story]">
                    <xsl:value-of select="events/stories-new/post-values/story" />
                </textarea>
            </label>
            <input name="fields[document]" type="file" />
            <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Submission Guidelines</a>
        </fieldset>


        <fieldset class="video">
            <label class="upload-a-video">
                <input type="radio" name="derp" />
                Upload a video 
                <span class="hint">
                    (Videos must be 5 minutes in length or less and less than 20MB)
                </span>
            </label>
            <label>Video:
                <input name="fields[video]" type="file" />
            </label>
            <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">Submission Guidelines</a>
        </fieldset>


        <fieldset class="contact">
            <legend>Your Contact Information</legend>
            <label>First Name:
                <input name="fields[first-name]" type="text" value="{events/stories-new/post-values/first-name}" />
            </label>

            <label>Last Name:
                <input name="fields[last-name]" type="text" value="{events/stories-new/post-values/last-name}" />
            </label>

            <label>Operation Name: 
                <input name="fields[operation-name]" type="text" value="{events/stories-new/post-values/operation-name}" />
            </label>

            <label>Address:</label>
            <input name="fields[address-1]" type="text" value="{events/stories-new/post-values/address-1}" />
            <input name="fields[address-2]" type="text" value="{events/stories-new/post-values/address-2}" />
            <input name="fields[address-3]" type="text" value="{events/stories-new/post-values/address-3}" />

            <label class="city">City:
                <input name="fields[city]" type="text" value="{events/stories-new/post-values/city}" />
            </label>

            <label class="state">State:
                <input name="fields[state]" type="text" value="{events/stories-new/post-values/state}" />
            </label>

            <label class="zip">Zip Code:
                <input name="fields[zip-code]" type="text" value="{events/stories-new/post-values/zip-code}" />
            </label>

            <label>Type of Operation:
                <input name="fields[type-of-operation]" type="text" value="{events/stories-new/post-values/type-of-operation}" />
            </label>

            <label>Job Title:
                <input name="fields[job-title]" type="text" value="{events/stories-new/post-values/job-title}" />
            </label>

            <label>Email*:
                <input name="fields[email]" type="email" value="{events/stories-new/post-values/email}" />
            </label>

            <label>Phone Number:
                <input name="fields[phone-number]" type="tel" value="{events/stories-new/post-values/phone-number}" />
            </label>
        </fieldset>


        <label class="rules">
            <input type="checkbox" required="required" />
            I have read and agree to the <a href="{$workspace}/assets/minors-my-story-contest-rules.pdf">rules</a> of this contest.
        </label>


        <small>
            <a href="http://www.nestleprofessional.com/united-states/en/SiteArticles/Pages/PrivacyPolicy.aspx" class="privacy">
                *Your privacy is important to NESTL&#201; PROFESSIONAL<sub>TM</sub>. We do not sell or rent your 
                email address, or any other personal identifiable information, to third-party 
                companies. NESTL&#201; PROFESSIONAL and its parent company NESTL&#201; USA, may occasionally 
                send you emails regarding product specials, promotions and information about our products. 
            </a>
        </small>
        <input name="action[stories-new]" type="submit" value="Submit" />
    </form>
</xsl:template>
</xsl:stylesheet>
