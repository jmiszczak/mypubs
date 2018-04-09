<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" omit-xml-declaration="yes" indent="no" />
<xsl:variable name="journals" select="document('journals.xml')"/>

<xsl:strip-space elements="*" />

	<xsl:template match="/">
<xsl:text>
\newcounter{publication}
\begin{list}{(\arabic{publication})}{\usecounter{publication}}
</xsl:text>
	<xsl:for-each select="publications/article">
	<xsl:sort select="year" order="descending"/>
	<xsl:variable name="j" select="journal" />
	<xsl:variable name="j-if" select="$journals//journal[iso-name = $j]//impact-factor[@year=2011]" />

	<xsl:if test="$j-if &gt; 0">
	\item <xsl:apply-templates select="authors"/>, 
		\emph{<xsl:value-of select="title"/>},
		<xsl:choose>
		<xsl:when test="string-length(pages) &gt; 0">
			<xsl:value-of select="$j" /><xsl:text>, </xsl:text> 
			<xsl:text>Vol. </xsl:text><xsl:value-of select="volume" /><xsl:text>, </xsl:text> 
			<xsl:text>No. </xsl:text><xsl:value-of select="number" /> (<xsl:value-of select="year" /><xsl:text>), </xsl:text> 
			<xsl:text>pp. </xsl:text><xsl:value-of select="pages" />. 
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>\AcceptedForPublication{</xsl:text><xsl:value-of select="journal" /><xsl:text>}. (</xsl:text>
			<xsl:value-of select="year" /><xsl:text>).
			</xsl:text> 
		</xsl:otherwise>

		</xsl:choose>

		<xsl:text>\IF{</xsl:text><xsl:value-of select="$j-if" /><xsl:text>}</xsl:text>

		</xsl:if>
	
</xsl:for-each>
<xsl:text>

\end{list}
</xsl:text>

	</xsl:template>

	<xsl:template match="authors">
		<xsl:for-each select="author">
			<xsl:value-of select="." /><xsl:if test="position()!=last()">, </xsl:if>
		</xsl:for-each>
	</xsl:template>


</xsl:stylesheet>
