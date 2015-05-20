<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/offers.xsl" />




<xsl:template match="/data">
    <h1>MINOR'S<sup>&#174;</sup> Offers you More</h1>

    <div class="left">
        <img src="{$workspace}/img/banner-world-of-flavor.jpg" />


        <div class="copy">
            <xsl:copy-of select="worlds-of-flavor/entry/copy/*" />
        </div>


        <section class="how-it-works">
            <h2>How it Works</h2>

            <div class="copy">
                <xsl:copy-of select="worlds-of-flavor/entry/how-it-works/*" />
            </div>
        </section>


        <section class="sign-up form">
            <h2>Sign Up</h2>

            <xsl:if test="events/worlds-of-flavor-contest-new/@result = 'error'">
                <p class="error">
                    Please correct the errors below.
                </p>
            </xsl:if>

            <xsl:if test="not(events/worlds-of-flavor-contest-new/@result = 'success')">
                <form method="post" action="/offers/worlds-of-flavor/#sign-up">
                    <h3>Your Contact Information</h3>

                    <label class="first-name {events/worlds-of-flavor-contest-new/first-name/@type}">
                        First Name:

                        <input name="fields[first-name]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/first-name}" />
                    </label>

                    <label class="last-name {events/worlds-of-flavor-contest-new/last-name/@type}">
                        Last Name:

                        <input name="fields[last-name]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/last-name}" />
                    </label>

                    <label class="business-name {events/worlds-of-flavor-contest-new/operation-name/@type}">
                        Business Name:

                        <input name="fields[operation-name]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/operation-name}" />
                    </label>

                    <label class="address {events/worlds-of-flavor-contest-new/operation-address-1/@type}">
                        Business Address:

                        <input name="fields[operation-address-1]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/operation-address-1}" />
                    </label>

                    <label class="address {events/worlds-of-flavor-contest-new/operation-address-2/@type}">
                        Business Address (2):

                        <input name="fields[operation-address-2]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/operation-address-2}" />
                    </label>

                    <label class="city {events/worlds-of-flavor-contest-new/city/@type}">
                        City

                        <input name="fields[city]" type="text" value="{events/worlds-of-flavor-contest-new/post-values/city}" />
                    </label>

                    <label class="state {events/worlds-of-flavor-contest-new/state/@type}">
                        State:

                        <select name="fields[state]">
                            <xsl:for-each select="/data/states/option">
                                <option value="{@value}">
                                    <xsl:if test="/data/events/worlds-of-flavor-contest-new/post-values/state = current()/@value">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>

                                    <xsl:value-of select="." />
                                </option>
                            </xsl:for-each>
                        </select>
                    </label>

                    <label class="zip {events/worlds-of-flavor-contest-new/zip-code/@type}">
                        Zip Code:

                        <input name="fields[zip-code]" type="text" value="{events/worlds-of-flavor-contest-new[@result='error']/post-values/zip-code}" />
                    </label>

                    <label class="type {events/worlds-of-flavor-contest-new/type-of-operation/@type}">
                        Type of Operation:

                        <input name="fields[type-of-operation]" type="text" value="{events/worlds-of-flavor-contest-new[@result='error']/post-values/type-of-operation}" />
                    </label>

                    <label class="job-title {events/worlds-of-flavor-contest-new/job-title/@type}">
                        Job Title:

                        <input name="fields[job-title]" type="text" value="{events/worlds-of-flavor-contest-new[@result='error']/post-values/job-title}" />
                    </label>

                    <label class="email {events/worlds-of-flavor-contest-new/email-address/@type}">
                        Email** Address:

                        <input name="fields[email-address]" type="text" value="{events/worlds-of-flavor-contest-new[@result='error']/post-values/email-address}" />
                    </label>

                    <label class="phone {events/worlds-of-flavor-contest-new/phone-number/@type}">
                        Phone Number:

                        <input name="fields[phone-number]" type="text" value="{events/worlds-of-flavor-contest-new[@result='error']/post-values/phone-number}" />
                    </label>

                    <label class="example">
                        Since 1951, MINOR’S has provided dependable flavor. Please share a brief example of how the flavor of MINOR’S has impacted your business. Has the unmatched flavor helped you delight your patrons? Has the consistency and quality enhanced your ability to provide more satisfying options? Everyone has a different example. We’d like to know yours.

                        <textarea name="fields[example]">
                            <xsl:value-of select="events/worlds-of-flavor-contest-new[@result='error']/post-values/example" />
                        </textarea>
                    </label>

                    <label class="agreed-to-rules {events/worlds-of-flavor-contest-new/agreed-to-rules/@type}">
                        <input name="fields[agreed-to-rules]" type="checkbox" />

                        <p>
                            I have read and agree to the <a href="{$workspace}/assets/minors-cia-worlds-of-flavor-sweepstakes-rules.pdf" target="_blank">OFFICIAL RULES</a>. I also understand that by entering, I am granting Nestlé Professional and its designees full and unrestricted ownership rights of my entry and example above. I have full rights to the entry and can pass along such rights to Nestlé, as required in the Official Rules.
                        </p>
                    </label>

                    <small>
                        <a href="http://www.nestleprofessional.com/uk/en/SiteArticles/Pages/PrivacyPolicy.aspx">
                            **Your privacy is important to NESTLÉ PROFESSIONAL<sub>®</sub>. We do not sell or rent your email address, or any other personal identifiable information, to third-party companies. FlavorMeansBusiness.com, NESTLÉ PROFESSIONAL and its parent company NESTLÉ USA, may occasionally send you emails regarding product specials, promotions and information about our products.
                        </a>
                    </small>

                    <input name="redirect" type="hidden" value="/offers/worlds-of-flavor/success" />

                    <input name="action[worlds-of-flavor-contest-new]" type="submit" value="Submit" />
                </form>
            </xsl:if>
        </section>

        <small class="footnote">
            <a href="http://worldsofflavor.com">*www.worldsofflavor.com</a><br />
            Worlds of Flavor® International Conference and Festival is a registered trademark owned by the Culinary Institute of America.
        </small>
    </div>


    <xsl:call-template name="sidebar" />
</xsl:template>



<xsl:template name="title">Win a Trip to CIA Worlds of Flavor International Conference and Festival</xsl:template>



<xsl:template name="finalize">
    <xsl:if test="/data/params/success = 'success'">
        <div class="lightbox">
            <div class="window">
                <p>
                    Thanks for entering MINOR’S® CIA Worlds of Flavor<sup>®</sup> Sweepstakes. Good luck! The winner will be notified on or about July 15, 2013.
                </p>

                <button>Continue Browsing</button>
            </div>
        </div>
    </xsl:if>


</xsl:template>
</xsl:stylesheet>
