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
        <h1 style="line-height:1;">Complete and submit the form below to be contacted by your Sales Representative.</h1>

        <div class="copy">
            <xsl:copy-of select="gluten-free/entry/copy/*" />
        </div>
<xsl:if test="/data/params/url-success">
        <div class="lightbox1">
            <div class="window1">
                <h2 class="center">Thank you.</h2>

                <div class="copy">
                    <p style="text-align:center;">
                       Your submission has been received. You will be contacted by your Sales Representative.
                    </p>
                </div>

                <!--
                <button class="continue button">Continue Browsing</button>
                
                <a href="/products/" class="continue button" style="color: black;">Browse Products</a>

-->
               <!-- <button class="close">X</button> -->
            </div>
        </div>
    </xsl:if>
        <section class="sign-up form">
            <h2>Gluten Free Offers</h2>
    
            <xsl:if test="events/gluten-free-form/@result = 'error'">
                <p class="error">
                    Please correct the errors below.
                </p>
            </xsl:if>

            <xsl:if test="not(events/gluten-free-form/@result = 'success')">
                <form method="post" action="">
                    
                    <h3>Your Contact Information</h3>
				<label class="first-name {events/gluten-free-form/first-name/@type}">
                        First Name:

                        <input name="fields[first-name]" type="text" value="{events/gluten-free-form/post-values/first-name}" />
                    </label>

                    <label class="last-name {events/gluten-free-form/last-name/@type}">
                        Last Name:

                        <input name="fields[last-name]" type="text" value="{events/gluten-free-form/post-values/last-name}" />
                    </label>
					<label class="city {events/gluten-free-form/city/@type}">
                        City:

                        <input name="fields[city]" type="text" value="{events/gluten-free-form/post-values/city}" />
                    </label>

                     <label class="state {events/gluten-free-form/state/@type}">
                        State:

                        <select name="fields[state]">
                            <xsl:for-each select="/data/states/option">
                                <option value="{@value}">
                                    <xsl:if test="/data/events/gluten-free-form/post-values/state = current()/@value">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>

                                    <xsl:value-of select="." />
                                </option>
                            </xsl:for-each>
                        </select>
                    </label>
                    <!-- <label class="name {events/gluten-free-form/name/@type}">
                         Name:

                        <input name="fields[name]" type="text" value="{events/gluten-free-form/post-values/name}" />
                    </label> -->

                     <label class="email-address {events/gluten-free-form/email-address/@type}">
                        Email Address or Phone Number (Choose One):

                        <input name="fields[email-address]" type="email" value="{events/gluten-free-form/post-values/email-address}" />

                    </label>                  
                   <!-- <label class="phone-number {events/gluten-free-form/phone/@type}">
                        Phone Number:

                        <input name="fields[phone]" type="text" value="{events/gluten-free-form/post-values/phone}" />
                    </label>
					<label class="preferred {events/gluten-free-form/preferred/@type}">
                        Preferred Method of Contact:

                        <select name="fields[preferred]">
                            <option></option>

                            <option value="Email">
                                <xsl:if test="events/gluten-free-form/post-values/preferred = 'Email'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Email
                            </option>
							<option value="Phone">
                                <xsl:if test="events/gluten-free-form/post-values/preferred = 'Phone'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Phone
                            </option>
</select>
</label> --> <label class="name-operation {events/gluten-free-form/name-operation/@type}">
                       Name of Operation:

                        <input name="fields[name-operation]" type="text" value="{events/gluten-free-form/post-values/name-operation}" />
                    </label>
					
					<!--<label class="type-of-operation {events/gluten-free-form/type-of-operation/@type}">
                        Type of Operation:

                        <select name="fields[type-of-operation]">
                            <option></option>

                            <option value="FSR - Full Service Restaurants">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'FSR - Full Service Restaurants'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                FSR - Full Service Restaurants
                            </option>

                            <option value="QSR - Quick Service Restaurants">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'QSR - Quick Service Restaurants'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                QSR - Quick Service Restaurants
                            </option>

                            <option value="Lodging">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Lodging'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Lodging
                            </option>

                            <option value="Street">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Street'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Street
                            </option>

                            <option value="Cafés Bakeries Bars">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Cafés Bakeries Bars'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Cafés Bakeries Bars
                            </option>

                            <option value="B and I (at work)">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'B and I (at work)'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                               B and I (at work)
                            </option>

                            <option value="Hotel Accommodation and Meetings">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Hotel Accommodation and Meetings'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Hotel Accommodation and Meetings
                            </option>

                            <option value="Leisure Sports Entertainment">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Leisure Sports Entertainment'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Leisure Sports Entertainment
                            </option>
 <option value="Community">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Community'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Community
                            </option>
<option value="Travel and Transport">
                                <xsl:if test="events/flavor-expedition-forms-new/post-values/type-of-operation = 'Travel and Transport'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Travel and Transport
                            </option>
 <option value="Health Wellbeing">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Health Wellbeing'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Health Wellbeing
                            </option>
 <option value="Government">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Government'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Government
                            </option>
 <option value="Education">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Education'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Education
                            </option>
 <option value="Vending Operators">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'Vending Operators'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                Vending Operators
                            </option>
 <option value="CVS Instore">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'CVS Instore'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                CVS Instore
                            </option>
                        </select>
                    </label> -->

                   <!-- <label class="number-of-meals-served-every-day {events/gluten-free-form/number-of-meals-served-every-day/@type}">
                        Number of meals served every day:

                        <input name="fields[number-of-meals-served-every-day]" type="text" value="{events/gluten-free-form/post-values/number-of-meals-served-every-day}" />
                    </label>
						-->
<!--<label class="number-of-meals-served-every-day {events/gluten-free-form/number-of-meals-served-every-day/@type}">
                          Number of meals served every day:

                        <select name="fields[number-of-meals-served-every-day]">
                            <option></option>

                            <option value="less than 50 meals per day">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'less than 50 meals per day'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                less than 50 meals per day
                            </option>
<option value="50 to 100 meals per day">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = '50 to 100 meals per day'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                50 to 100 meals per day
                            </option>
<option value="101 to 250 meals per day">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = '101 to 250 meals per day'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                101 to 250 meals per day
                            </option>
<option value="251 to 500 meals per day">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = '251 to 500 meals per day'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                               251 to 500 meals per day
                            </option>
<option value="greater than 500 meals per day">
                                <xsl:if test="events/gluten-free-form/post-values/type-of-operation = 'greater than 500 meals per day'">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                </xsl:if>

                                greater than 500 meals per day
                            </option>
</select>
</label>
<label class="current-distributor {events/gluten-free-form/current-distributor/@type}">
                       Current Distributor:

                        <input name="fields[current-distributor]" type="text" value="{events/gluten-free-form/post-values/current-distributor}" />
                    </label> -->

                  <!--  <label class="any-other-specific-needs-minors-can-help-with">
					Any other specific needs <em>Minor's</em> can help with?
                        <textarea name="fields[any-other-specific-needs-minors-can-help-with]"><xsl:value-of select="events/gluten-free-form/post-values/any-other-specific-needs-minors-can-help-with" /></textarea>
                    </label> -->




                    <small>
                        <a href="http://www.nestleprofessional.com/uk/en/SiteArticles/Pages/PrivacyPolicy.aspx">
                            **Your privacy is important to Nestlé Professional<sub>®</sub>. We do not sell or rent your email address, or any other personal identifiable information, to third-party companies. FlavorMeansBusiness.com, Nestlé Professional and its parent company Nestlé USA, may occasionally send you emails regarding product specials, promotions and information about our products.
                        </a>
                    </small>

                    <input name="redirect" type="hidden" value="/gluten-free-form/?success" data-baseurl="/gluten-free/?success"/>

                    <input name="action[gluten-free-form]" type="submit" value="Submit" />
                </form>
            </xsl:if>
        </section>
    </div>

 <xsl:call-template name="sidebar" />
</xsl:template> 
<xsl:template name="finalize">

</xsl:template> 
</xsl:stylesheet>