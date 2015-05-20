<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/master.xsl" />

<xsl:import href="../utilities/format-date.xsl" />

<xsl:import href="../utilities/bootscripts.xsl" />

<xsl:template match="/data">
<h1 style="padding:0 15px;">Latin Flavors Recipes</h1>
	<div class="featured-latin" style="min-height:400px;"><xsl:apply-templates select="latin-flavor-featured/entry"/></div>
  <div class="visible-desktop"><xsl:apply-templates select="latin-recipes/entry[position() mod 3 = 1]"/></div>
  <div class="visible-tablet"><xsl:apply-templates select="latin-recipes/entry[position() mod 2 = 0]"/></div>
<div class="visible-mobile"><xsl:apply-templates select="latin-recipes/entry[position() mod 2 = 0]"/></div>
  <div class="see-more" style="text-align:center;">
<p style="font-size:20px;">See more Latin Flavors recipes <a style="text-decoration:underline;" href="
http://flavormeansbusiness.com/products/latin-flavors/">here</a></p></div>

</xsl:template>

<xsl:template match="latin-flavor-featured/entry">
 <div class="image" style="margin:10px 15px 5%;float:left;max-width:50%;">
<img style="width:100%;" src="/workspace/{latin-flavor-featured-image/@path}/{latin-flavor-featured-image/filename}" />
</div>
<div class="featured-latin-right" style="float:left;max-width:45%;">
<h2 style="font-size:30px;" class="latin-recipe-title"><xsl:value-of select="latin-flavor-featured-title"/></h2>
<p><xsl:value-of select="latin-flavor-featured-description"/></p>
<a target="_blank" href="/workspace/{latin-flavor-featured-pdf/@path}/{latin-flavor-featured-pdf/filename}">
<div class="download-button"><p>Download Recipe »</p></div></a>
</div>
</xsl:template>  

<xsl:template match="latin-recipes/entry">
    <div class="row clearfix visible-desktop">
        <xsl:apply-templates select=". | following-sibling::entry[position() &lt;= 2]" mode="content"/>
    </div>
<div class="row clearfix visible-tablet">
        <xsl:apply-templates select=". | following-sibling::entry[position() &lt;= 1]" mode="content"/>
    </div>
<div class="row clearfix visible-mobile">
        <xsl:apply-templates select=". | following-sibling::entry[position() &lt;= 1]" mode="content"/>
    </div>
</xsl:template>

<xsl:template match="latin-recipes/entry" mode="content">
    <div class="grid_4">
        <div class="latin-flavor-image"><div class="visible-desktop" style="margin:10px 5px 5%;float:left;width:31.4815%;">
<div class="image"><img style="width:340px; height:240px;" src="/workspace/{latin-recipe-image/@path}/{latin-recipe-image/filename}" /></div>
<h2 style="font-size:20px;" class="latin-recipe-title"><xsl:value-of select="latin-recipe-title"/></h2>
<a target="_blank" href="/workspace/{latin-recipe-pdf/@path}/{latin-recipe-pdf/filename}"><div class="download-button"><p>Download Recipe »</p></div></a>
</div>
</div>
<div class="visible-tablet image" style="padding:10px;float:left;width:42%;">
<img style="width:100%;" src="/workspace/{latin-recipe-image/@path}/{latin-recipe-image/filename}" />
<h2 class="latin-recipe-title"><xsl:value-of select="latin-recipe-title"/></h2>
<div class="download-button"><p>Download Recipe »</p></div>
</div>
<div class="visible-mobile image" style="padding:0 10px;margin:auto;width:100%;">
<img style="margin:auto; display:block;max-width:100%;" src="/workspace/{latin-recipe-image/@path}/{latin-recipe-image/filename}" />
<h2 class="latin-recipe-title"><xsl:value-of select="latin-recipe-title"/></h2>
<div class="download-button"><p>Download Recipe »</p></div>
</div>
</div>

</xsl:template>




</xsl:stylesheet>