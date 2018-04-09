<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="authors">
		<xsl:for-each select="author">
			<xsl:value-of select="." />,
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="editors">
		<xsl:for-each select="editor">
			<xsl:value-of select="." />,
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="arxiv">
		arXiv:<a>
		<xsl:attribute name="href">http://arxiv.org/abs/<xsl:value-of select="." /></xsl:attribute>
		<xsl:value-of select="." />
		</a>
	</xsl:template>

	<xsl:template match="doi">
		<xsl:text> DOI:</xsl:text><a>
		<xsl:attribute name="href">http://doi.org/<xsl:value-of select="." /></xsl:attribute>
		<xsl:value-of select="." /> 
		</a>
	</xsl:template>

	<xsl:template match="pdf-file">
		<xsl:text> </xsl:text>
		<a>
		<xsl:attribute name="href"><xsl:value-of select="." /></xsl:attribute>
		<xsl:text>[PDF]</xsl:text>
		</a>
	</xsl:template>

</xsl:stylesheet>
