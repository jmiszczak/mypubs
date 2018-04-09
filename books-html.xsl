<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="common-html.xsl" />
<xsl:strip-space elements="*" />

<xsl:output method="xml" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:for-each select="publications/book">
			<xsl:sort select="year" order="descending"/>

			<li>
			<xsl:apply-templates select="authors"/>
			<i><xsl:value-of select="title"/></i>,

			<xsl:value-of select="publisher" />,
			<xsl:value-of select="month" />
			<xsl:text> </xsl:text>
			<xsl:value-of select="year" />

			<xsl:if test="string-length(volume) &gt; 0">
				<xsl:text>, Volume </xsl:text><xsl:value-of select="volume" /><xsl:text> of </xsl:text><xsl:value-of select="series" />
			</xsl:if>

			<xsl:if test="string-length(doi) &gt; 0">
				<xsl:text>,</xsl:text>
				<xsl:apply-templates select="doi"/> 
			</xsl:if>

			<xsl:if test="string-length(more-info-dir) &gt; 0">
				<a>
				<xsl:attribute name="href">
				</xsl:attribute>
				</a>
			</xsl:if>

			<xsl:text> </xsl:text>
			<a>
			<xsl:attribute name="href">
			<xsl:text>bibtex.php?key=</xsl:text><xsl:value-of select="@key" />
			</xsl:attribute>
			[BIB]
			</a>

			</li>

		</xsl:for-each>

	</xsl:template>


</xsl:stylesheet>
