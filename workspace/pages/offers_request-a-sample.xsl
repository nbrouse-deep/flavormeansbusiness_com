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
        <img src="{$workspace}{request-a-sample/entry/masthead-image/@path}/{request-a-sample/entry/masthead-image/filename}" />


        <section class="how-it-works">
            <div class="copy">
                <xsl:copy-of select="request-a-sample/entry/copy/*" />
            </div>
        </section>


       <!-- <section class="sign-up form">
            <h2>Request a Sample</h2>

            <xsl:if test="events/sample-request-forms-new/@result = 'error'">
                <p class="error">
                    Please correct the errors below.
                </p>
            </xsl:if>

            <xsl:if test="not(events/sample-request-forms-new/@result = 'success')">
                <form method="post" action="#sign-up">
                    <div class="samples">
                        <h3>
                            Available Sample<xsl:if test="count(sample-options/entry) &gt; 1">s</xsl:if>

                            <xsl:if test="count(sample-options/entry) &gt; 1">
                                <span class="hint" style="text-align: left;">
                                    (Limit one free sample per operator)
                                </span>
                            </xsl:if>
                        </h3>


                        <xsl:for-each select="sample-options/entry">
                            <label class="{/data/events/sample-request-forms-new/sample/@type}">
                                <img src="{$workspace}{image/@path}/{image/filename}" />

                                <input type="radio" value="{sample}" name="fields[sample]">
                                    <xsl:if test="count(/data/sample-options/entry) = 1">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:if>
                                </input>

                                <xsl:value-of select="sample" />
                            </label>
                        </xsl:for-each>

                        <p class="error">
                        </p>
                    </div>


                    <h3>Your Contact Information</h3>


                    <label class="first-name {events/sample-request-forms-new/first-name/@type}">
                        First Name:

                        <input name="fields[first-name]" type="text" value="{events/sample-request-forms-new/post-values/first-name}" />
                    </label>

                    <label class="last-name {events/sample-request-forms-new/last-name/@type}">
                        Last Name:

                        <input name="fields[last-name]" type="text" value="{events/sample-request-forms-new/post-values/last-name}" />
                    </label>

                    <label class="business-name {events/sample-request-forms-new/operation-name/@type}">
                        Business Name:

                        <input name="fields[operation-name]" type="text" value="{events/sample-request-forms-new/post-values/operation-name}" />
                    </label>

                    <label class="address {events/sample-request-forms-new/operation-address-1/@type}">
                        Business Address:

                        <input name="fields[operation-address-1]" type="text" value="{events/sample-request-forms-new/post-values/operation-address-1}" />
                    </label>

                    <label class="address {events/sample-request-forms-new/operation-address-2/@type}">
                        Business Address (2):

                        <input name="fields[operation-address-2]" type="text" value="{events/sample-request-forms-new/post-values/operation-address-2}" />
                    </label>

                    <label class="city {events/sample-request-forms-new/city/@type}">
                        City

                        <input name="fields[city]" type="text" value="{events/sample-request-forms-new/post-values/city}" />
                    </label>

                    <label class="state {events/sample-request-forms-new/state/@type}">
                        State:

                        <select name="fields[state]">
                            <xsl:for-each select="/data/states/option">
                                <option value="{@value}">
                                    <xsl:if test="/data/events/sample-request-forms-new/post-values/state = current()/@value">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>

                                    <xsl:value-of select="." />
                                </option>
                            </xsl:for-each>
                        </select>
                    </label>

                    <label class="zip {events/sample-request-forms-new/zip-postal-code/@type}">
                        Zip/Postal Code:

                        <input name="fields[zip-postal-code]" type="text" value="{events/sample-request-forms-new/post-values/zip-postal-code}" />
                    </label>

                    <label class="type {events/sample-request-forms-new/type-of-operation/@type}">
                        Type of Operation:

                        <select name="fields[type-of-operation]">
                            <option></option>
                            
                            <option value="Restaurant - Limited Service">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Restaurant - Limited Service'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Restaurant - Limited Service
                            </option>

                            <option value="Restaurant - Full Service">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Restaurant - Full Service'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Restaurant - Full Service
                            </option>

                            <option value="Lodging">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Lodging'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Lodging
                            </option>

                            <option value="College and University">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'College and University'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                College and University
                            </option>

                            <option value="Business and Industry">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Business and Industry'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Business and Industry
                            </option>

                            <option value="Healthcare - Hospitals">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Healthcare - Hospitals'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Healthcare - Hospitals
                            </option>

                            <option value="Restaurant - Full Service">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Healthcare - Other'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Healthcare - Other
                            </option>

                            <option value="Other">
                                <xsl:if test="events/sample-request-forms-new/post-values/type-of-operation = 'Other'">
                                    <xsl:attribute name="checked">checked</xsl:attribute>
                                </xsl:if>

                                Other
                            </option>
                        </select>
                    </label>

                    <label class="type-other {events/sample-request-forms-new/type-of-operation-other/@type}">
                        If Other, please specify:

                        <input name="fields[type-of-operation-other]" type="text" value="{events/sample-request-forms-new/post-values/type-of-operation-other}" />
                    </label>

                    <label class="job-title {events/sample-request-forms-new/job-title/@type}">
                        Job Title:

                        <input name="fields[job-title]" type="text" value="{events/sample-request-forms-new/post-values/job-title}" />
                    </label>

                    <label class="phone {events/sample-request-forms-new/phone/@type}">
                        Phone Number:

                        <input name="fields[phone]" type="text" value="{events/sample-request-forms-new/post-values/phone}" />
                    </label>

                    <label class="email {events/sample-request-forms-new/email/@type}">
                        Email** Address:

                        <input name="fields[email]" type="email" value="{events/sample-request-forms-new/post-values/email}" />
                        
                        <span class="hint">Please provide official business email address only</span>
                    </label>

                    <div class="primary-buyer {events/sample-request-forms-new/primary-buyer/@type}">
                        <p>
                            Are you the primary buyer or purchase decision-maker for your foodservice operation?
                        </p>

                        <label class="radio">
                            <input name="fields[primary-buyer]" type="radio" value="Yes"/>
                            Yes
                        </label>

                        <label class="radio">
                            <input name="fields[primary-buyer]" type="radio" value="No"/>
                            No
                        </label>
                    </div>

                    <label class="primary-distributor {events/sample-request-forms-new/first-name/@type}">
                        Who is your primary base distributor?

                        <input name="fields[primary-base-distributor]" type="text" value="{events/sample-request-forms-new/post-values/primary-base-distributor}" />
                    </label>

                    <label class="meals-per-day {events/sample-request-forms-new/first-name/@type}">
                        How many meals do you serve per day?

                        <input name="fields[meals-served]" type="text" value="{events/sample-request-forms-new/post-values/meals-served}" />
                    </label>

                    <label class="email-opt-in {events/sample-request-forms-new/email-opt-in/@type}">
                        <input name="fields[email-opt-in]" type="checkbox" />

                        Yes, I would like to receive future information like new product information and special offers from NESTLÉ PROFESSIONAL, MINOR’S via mail and email.
                    </label>

                    <small>
                        <a href="http://www.nestleprofessional.com/uk/en/SiteArticles/Pages/PrivacyPolicy.aspx">
                            **Your privacy is important to NESTLÉ PROFESSIONAL<sub>®</sub>. We do not sell or rent your email address, or any other personal identifiable information, to third-party companies. FlavorMeansBusiness.com, NESTLÉ PROFESSIONAL and its parent company NESTLÉ USA, may occasionally send you emails regarding product specials, promotions and information about our products.
                        </a>
                    </small>

                    <input name="redirect" type="hidden" value="/offers/request-a-sample/?success" />

                    <input name="action[sample-request-forms-new]" type="submit" value="Get Sample" />
                </form>
            </xsl:if>

            <small>* While supplies last.</small>
        </section> -->
    </div>


    <xsl:call-template name="sidebar" />
</xsl:template>



<xsl:template name="title">Request a Sample</xsl:template>



<xsl:template name="finalize">
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
</xsl:template>
</xsl:stylesheet>

