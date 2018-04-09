<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="common-html.xsl" />

<xsl:strip-space elements="*" />

<xsl:output method="xml" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:for-each select="publications/preprint">
			<xsl:sort select="year" order="descending"/>
			<li>
			<xsl:apply-templates select="authors"/>
			<i><xsl:value-of select="title"/></i>,
			<xsl:apply-templates select="arxiv"/>
			<xsl:text> (</xsl:text>
			<xsl:value-of select="year" />
			<xsl:text>).</xsl:text>
	
			</li>
		</xsl:for-each>

	</xsl:template>

</xsl:stylesheet>
