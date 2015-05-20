<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <div class="left">
        <img src="{$workspace}/img/prep-chef.jpg" />


        <h1>Contact our Chefs</h1>


        <div class="copy">
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
                    <a href="http://chat1.archway.com:8080/nestle12/request_chat_form.jsp">Chat live with a <em>Minor's</em> expert</a>
                </dd>
            </dl>
        </div>
    </div>



    <xsl:call-template name="featured-sidebar" />
</xsl:template>

</xsl:stylesheet>
