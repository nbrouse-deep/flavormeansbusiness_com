<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/offers.xsl" />




<xsl:template match="/data">
    <div class="mobile-only">
        <xsl:call-template name="sidebar" />
    </div>


    <div class="left">
        <img src="{$workspace}/img/flavor-expedition-banner.jpg" />

        <div class="copy">
            <xsl:copy-of select="flavor-expedition/entry/copy/*" />
        </div>

        <section class="sign-up form">
            <h2>Join the Flavor Expedition</h2>

            <xsl:if test="events/flavor-expedition-forms-new/@result = 'error'">
                <p class="error">
                    Please correct the errors below.
                </p>
            </xsl:if>

            <xsl:if test="not (events/flavor-expedition-form/@results = 'success')">
                <form method="post" action="">
                    <!--
                    <div class="referral">
                        <h3>Did someone refer you?</h3>

                        <label class="referral-name">
                            Name:

                            <input name="fields[referral-name]" type="text"  value="{events/flavor-expedition-forms-new/post-values/referral}" />
                        </label>

                        <label class="{events/flavor-expedition-forms-new/referral/@type}">
                            **Email address:

                            <input name="fields[referral]" type="email"  value="{/data/params/url-referral}">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/referral">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="events/flavor-expedition-forms-new/post-values/referral" />
                                    </xsl:attribute>
                                </xsl:if>
                            </input>
                        </label>
                    </div>
                    -->
                    
                    <h3>Your Contact Information</h3>

                    <label class="first-name {events/flavor-expedition-forms-new/first-name/@type}">
                        First Name:

                        <input name="fields[first-name]" type="text" value="{events/flavor-expedition-forms-new/post-values/first-name}" />
                    </label>

                    <label class="last-name {events/flavor-expedition-forms-new/last-name/@type}">
                        Last Name:

                        <input name="fields[last-name]" type="text" value="{events/flavor-expedition-forms-new/post-values/last-name}" />
                    </label>

                    <label class="business-name {events/flavor-expedition-forms-new/business-name/@type}">
                        Business Name:

                        <input name="fields[business-name]" type="text" value="{events/flavor-expedition-forms-new/post-values/business-name}" />
                    </label>

                    <label class="address {events/flavor-expedition-forms-new/business-address/@type}">
                        Business Address:

                        <input name="fields[business-address]" type="text" value="{events/flavor-expedition-forms-new/post-values/business-address}" />
                    </label>

                    <label class="address {events/flavor-expedition-forms-new/business-address-2/@type}">
                        Business Address (2):

                        <input name="fields[business-address-2]" type="text" value="{events/flavor-expedition-forms-new/post-values/business-address-2}" />
                    </label>

                    <label class="city {events/flavor-expedition-forms-new/city/@type}">
                        City

                        <input name="fields[city]" type="text" value="{events/flavor-expedition-forms-new/post-values/city}" />
                    </label>

                    <label class="state {events/flavor-expedition-forms-new/state/@type}">
                        State:

                        <select name="fields[state]">
                            <xsl:for-each select="/data/states/option">
                                <option value="{@value}">
                                    <xsl:if test="/data/events/flavor-expedition-forms-new/post-values/state = current()/@value">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>

                                    <xsl:value-of select="." />
                                </option>
                            </xsl:for-each>
                        </select>
                    </label>

                    <label class="zip {events/flavor-expedition-forms-new/zip-code/@type}">
                        Zip Code:

                        <input name="fields[zip-code]" type="text" value="{events/flavor-expedition-forms-new/post-values/zip-code}" />
                    </label>

                    <label class="type {events/flavor-expedition-forms-new/type-of-operation/@type}">
                        Type of Operation:

                        <select name="fields[type-of-operation]">
                            <option></option>

                            <option value="Restaurant - Limited Service">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Restaurant - Limited Service'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Restaurant - Limited Service
                            </option>

                            <option value="Restaurant - Full Service">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Restaurant - Full Service'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Restaurant - Full Service
                            </option>

                            <option value="Lodging">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Lodging'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Lodging
                            </option>

                            <option value="College and University">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'College and University'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                College and University
                            </option>

                            <option value="Business and Industry">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Business and Industry'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Business and Industry
                            </option>

                            <option value="Healthcare - Hospitals">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Healthcare - Hospitals'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Healthcare - Hospitals
                            </option>

                            <option value="Restaurant - Full Service">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Healthcare - Other'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Healthcare - Other
                            </option>

                            <option value="Other">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Other'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Other
                            </option>
                        </select>
                    </label>

                    <label class="type-other {events/flavor-expedition-forms-new/type-of-operation-other/@type}">
                        If Other, please specify:

                        <input name="fields[type-of-operation-other]" type="text" value="{events/flavor-expedition-forms-new/post-values/type-of-operation-other}" />
                    </label>

                    <label class="job-title {events/flavor-expedition-forms-new/job-title/@type}">
                        Job Title:

                        <input name="fields[job-title]" type="text" value="{events/flavor-expedition-forms-new/post-values/job-title}" />
                    </label>

                    <label class="phone {events/flavor-expedition-forms-new/phone-number/@type}">
                        Phone Number:

                        <input name="fields[phone-number]" type="text" value="{events/flavor-expedition-forms-new/post-values/phone-number}" />
                    </label>

                    <label class="email {events/flavor-expedition-forms-new/email-address/@type}">
                        Email** Address:

                        <input name="fields[email-address]" type="email" value="{events/flavor-expedition-forms-new/post-values/email-address}" />

                        <span class="hint">Please provide official business email address only</span>
                    </label>

                    <div class="current-customer {events/flavor-expedition-forms-new/current-customer/@type}">
                        <p>I currently purchase MINOR'S products:</p>

                        <label>
                            <input name="fields[current-customer]" type="radio" value="yes" />
                            Yes
                        </label>

                        <label>
                            <input name="fields[current-customer]" type="radio" value="no" />
                            No
                        </label>
                    </div>

                    <label class="comments">
                        <span>
                            Please tell us how MINOR’S can assist with your daily operational challenges.  <em>(100 words or less)</em>
                        </span>

                        <textarea name="fields[comments]"><xsl:value-of select="events/flavor-expedition-forms-new/post-values/comments" /></textarea>
                    </label>

                    <!--
                    <label class="agreed-to-rules {events/flavor-expedition-forms-new/agreed-to-rules/@type}">
                        <input name="fields[agreed-to-rules]" type="checkbox">
                            <xsl:if test="events/flavor-expedition-forms-new/post-values/agreed-to-rules = 'on'">
                                <xsl:attribute name="checked">checked</xsl:attribute>
                            </xsl:if>
                        </input>

                        I have read and agree to the <a href="{$workspace}/assets/pdf/minors-flavor-expedition-rules.pdf">OFFICIAL RULES</a>. I also understand that by entering, I am granting Nestlé 
                        Professional and its designees full and unrestricted ownership rights of my entry and example above. I 
                        have full rights to the entry and can pass along such rights to Nestlé, as required in the Official Rules.
                    </label>
                    -->

                    <small>
                        <a href="http://www.nestleprofessional.com/uk/en/SiteArticles/Pages/PrivacyPolicy.aspx">
                            **Your privacy is important to NESTLÉ PROFESSIONAL<sub>®</sub>. We do not sell or rent your email address, or any other personal identifiable information, to third-party companies. FlavorMeansBusiness.com, NESTLÉ PROFESSIONAL and its parent company NESTLÉ USA, may occasionally send you emails regarding product specials, promotions and information about our products.
                        </a>
                    </small>

                    <input name="redirect" type="hidden" value="/offers/flavor-expedition/videos/?success" data-baseurl="/offers/flavor-expedition/videos/?success"/>

                    <input name="action[flavor-expedition-forms-new]" type="submit" value="Sign up for Recipes and Videos" />
                </form>
            </xsl:if>
        </section>
    </div>

<xsl:if test="/data/params/url-success">
        <div class="lightbox">
            <div class="window">
                <h2>Thank you.</h2>

                <div class="copy">
                    <p>
                        We appreciate your request. Expect the arrival of your sample in 4-6 weeks and experience a new way flavor means business.
                    </p>
                </div>

                <!--
                <button class="continue button">Continue Browsing</button>
                -->
                <a href="/products/" class="continue button" style="color: black;">Browse Products</a>


                <button class="close">X</button>
            </div>
        </div>
    </xsl:if>
    <xsl:call-template name="sidebar" />
</xsl:template>
</xsl:stylesheet>
