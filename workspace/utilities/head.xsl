<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<!-- <head> -->
<xsl:template name="head">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta http-equiv="X-Frame-Options" content="Deny" /> 


        <xsl:call-template name="extra-meta">
        </xsl:call-template>


        <title>
            <xsl:call-template name="title" />
            <xsl:text> | </xsl:text>
            MINOR’S® - Trusted by Chefs™
        </title>



        <link rel="icon" href="/favicon.ico" />
        <link rel="stylesheet" href="{$workspace}/css/main.css" />
        <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />

        <meta name="apple-mobile-web-app-title" content="MINOR'S®" />


        <link href="//fonts.googleapis.com/css?family=Sorts+Mill+Goudy:400,400italic" rel="stylesheet" type="text/css" />
        <script src="//use.typekit.net/dmj3ddx.js"></script>
        <script>try{Typekit.load();}catch(e){}</script>
        <script src="{$workspace}/js/libs/modernizr-2.5.3.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    </head>
</xsl:template>






<xsl:template name="title">
    <xsl:value-of select="data/params/page-title" />
</xsl:template>



<xsl:template name="extra-meta">
</xsl:template>
</xsl:stylesheet>
