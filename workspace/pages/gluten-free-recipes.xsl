<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/master.xsl" />

<xsl:import href="../utilities/format-date.xsl" />

<xsl:import href="../utilities/bootscripts.xsl" />

<xsl:template match="/data">
<h1 style="padding:0 15px;">Gluten Free Recipes</h1>
	<div class="featured-latin" style="min-height:400px;"><xsl:apply-templates select="gluten-recipes-featured/entry"/></div>
  <div class="visible-desktop"><xsl:apply-templates select="gluten-recipes/entry[position() mod 3 = 1]"/></div>
  <div class="visible-tablet"><xsl:apply-templates select="gluten-recipes/entry[position() mod 2 = 0]"/></div>
<div class="visible-mobile"><xsl:apply-templates select="gluten-recipes/entry[position() mod 2 = 0]"/></div>
  <div class="see-more" style="text-align:center;">
<p style="font-size:20px;">See more Fluten Free recipes <a style="text-decoration:underline;" href="
http://flavormeansbusiness.com/products/latin-flavors/">here</a></p></div>

</xsl:template>

<xsl:template match="gluten-recipes-featured/entry">
 <div class="image" style="margin:10px 15px 5%;float:left;max-width:50%;">
<a target="_blank" href="/workspace/{gluten-recipe-featured-pdf/@path}/{gluten-recipe-featured-pdf/filename}"><img style="width:100%;" src="/workspace/{gluten-recipe-featured-image/@path}/{gluten-recipe-featured-image/filename}" /></a>
</div>
<div class="featured-latin-right" style="float:left;max-width:45%;">
<h2 style="font-size:30px;" class="latin-recipe-title"><xsl:value-of select="gluten-recipe-featured-title"/></h2>
<p><xsl:value-of select="gluten-recipe-featured-description"/></p>
<a target="_blank" href="/workspace/{gluten-recipe-featured-pdf/@path}/{gluten-recipe-featured-pdf/filename}">
<div class="download-button"><p>Download Recipe »</p></div></a>
</div>
</xsl:template>  

<xsl:template match="gluten-recipes/entry">
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

<xsl:template match="gluten-recipes/entry" mode="content">
    <div class="grid_4">
        <div class="latin-recipes-image"><div class="visible-desktop" style="margin:10px 5px 5%;float:left;width:31.4815%;">
<div class="image">
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}"><img style="width:340px; height:240px;" src="/workspace/{gluten-recipe-image/@path}/{gluten-recipe-image/filename}" /></a>
</div>
<h2 style="font-size:20px;" class="latin-recipe-title"><xsl:value-of select="gluten-recipe-title"/></h2>
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}"><div class="download-button"><p>Download Recipe »</p></div></a>
</div>
</div>
<div class="visible-tablet image" style="padding:10px;float:left;width:42%;">
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}"><img style="width:100%;" src="/workspace/{gluten-recipe-image/@path}/{gluten-recipe-image/filename}" /></a>
<h2 class="latin-recipe-title"><xsl:value-of select="gluten-recipe-title"/></h2>
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}"><div class="download-button"><p>Download Recipe »</p></div></a>
</div>
<div class="visible-mobile image" style="padding:0 10px;margin:auto;width:100%;">
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}">
<img style="margin:auto; display:block;max-width:100%;" src="/workspace/{gluten-recipe-image/@path}/{gluten-recipe-image/filename}" />
</a>
<h2 class="latin-recipe-title"><xsl:value-of select="gluten-recipe-title"/></h2>
<a target="_blank" href="/workspace/{gluten-recipe-pdf/@path}/{gluten-recipe-pdf/filename}">
<div class="download-button"><p>Download Recipe »</p></div>
</a>
</div>
</div>

</xsl:template>




</xsl:stylesheet>