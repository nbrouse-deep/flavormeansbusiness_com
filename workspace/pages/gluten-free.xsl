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
            <xsl:copy-of select="gluten-free-form/entry/copy/*" />
        </div>

        <section class="sign-up form">
            <h2>Gluten Free Offers</h2>
            
<xsl:if test="events/gluten-free-form/@result = 'error'">
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
            <!--<xsl:if test="events/gluten-free-form/@result = 'error'">
                <p class="error">
                    Please correct the errors below.
                </p>
            </xsl:if> -->

	            <xsl:if test="not(events/gluten-free-form/@result = 'success')">
                <form method="post" action="">
                    
                    <h3>Your Contact Information</h3>

                    <label class="name {events/gluten-free-form/name/@type}">
                         Name:

                        <input name="fields[name]" type="text" value="{events/gluten-free-form/post-values/name}" />
                    </label>
					<label class="preferred-method-of-contact {events/gluten-free-form/preferred-method-of-contact/@type}">
                         Preferred Method of Contact:

                        <input name="fields[preferred-method-of-contact]" type="text" value="{events/gluten-free-form/post-values/preferred-method-of-contact}" />
                    </label>  
                     <label class="email-address {events/gluten-free-form/email-address/@type}">
                        Email Address:

                        <input name="fields[email-address]" type="email" value="{events/gluten-free-form/post-values/email-address}" />

                    </label>                  
                    <label class="phone-number {events/gluten-free-form/phone/@type}">
                        Phone Number:

                        <input name="fields[phone]" type="text" value="{events/gluten-free-form/post-values/phone}" />
                    </label>
					<label class="type-of-operation {events/gluten-free-form/type-of-operation/@type}">
                       Type of Operation:

                        <input name="fields[type-of-operation]" type="text" value="{events/gluten-free-form/post-values/type-of-operation}" />
                    </label>
                    <label class="number-of-meals-served-every-day {events/gluten-free-form/number-of-meals-served-every-day/@type}">
                        Number of meals served every day:

                        <input name="fields[number-of-meals-served-every-day]" type="text" value="{events/gluten-free-form/post-values/number-of-meals-served-every-day}" />
                    </label>


                    <label class="any-other-specific-needs-minors-can-help-with">
					Any other specific needs Minor's can help with?
                        <textarea name="fields[any-other-specific-needs-minors-can-help-with]"><xsl:value-of select="events/gluten-free-form/post-values/any-other-specific-needs-minors-can-help-with" /></textarea>
                    </label>




                    <small>
                        <a href="http://www.nestleprofessional.com/uk/en/SiteArticles/Pages/PrivacyPolicy.aspx">
                            **Your privacy is important to NESTLÉ PROFESSIONAL<sub>®</sub>. We do not sell or rent your email address, or any other personal identifiable information, to third-party companies. FlavorMeansBusiness.com, NESTLÉ PROFESSIONAL and its parent company NESTLÉ USA, may occasionally send you emails regarding product specials, promotions and information about our products.
                        </a>
                    </small>

                    <input name="redirect" type="hidden" value="/gluten-free-form/?success" />

                    <input name="action[gluten-free-form]" type="submit" value="Submit" />
                    
                  
                </form>
                
        </section>
    </div>


 <xsl:call-template name="sidebar" />
</xsl:template>
</xsl:stylesheet>
