<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" omit-xml-declaration="yes" indent="yes" />
<xsl:preserve-space elements="*" />
	<xsl:template match="/">
		<xsl:for-each select="publications/article">
			<xsl:sort select="year" order="descending"/>
@Article{<xsl:value-of select="@key" />,
	author = {<xsl:apply-templates select="authors"/>},
	title = {<xsl:value-of select="title"/>},
	doi = {<xsl:value-of select="doi" />},
	journal = {<xsl:value-of select="journal" />}, 
	volume = {<xsl:value-of select="volume" />},
	number = {<xsl:value-of select="number" />},
	pages = {<xsl:value-of select="pages" />},
	year = {<xsl:value-of select="year" />},<xsl:apply-templates select="arxiv" />
}
</xsl:for-each>

	</xsl:template>

	<xsl:template match="authors">
		<xsl:for-each select="author">
			<xsl:value-of select="substring-after(.,' ')"/><xsl:text>, </xsl:text>
			<xsl:value-of select="substring-before(.,' ')"/> 
			

			<!--<xsl:value-of select="." />-->
			<xsl:if test="position()!=last()"><xsl:text> and </xsl:text></xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="arxiv">
	archivePrefix = {arXiv},
	preprint = {<xsl:value-of select="." />},</xsl:template>

</xsl:stylesheet>
