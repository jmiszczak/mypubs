<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" omit-xml-declaration="yes" indent="no" />
  <xsl:variable name="journals" select="document('journals.xml')"/>

  <xsl:strip-space elements="*" />

  <xsl:template match="/">

    <xsl:for-each select="publications/article">
      <xsl:sort select="year" order="descending"/>
      <xsl:variable name="j" select="journal" />

      \item <xsl:apply-templates select="authors"/>, 
      \emph{<xsl:value-of select="title"/>},
      <xsl:value-of select="$j" /><xsl:text>, </xsl:text> 
      <xsl:text>Vol. </xsl:text><xsl:value-of select="volume" />
      <xsl:text>, </xsl:text> 
      <xsl:text>No. </xsl:text><xsl:value-of select="number" />
      <xsl:text> (</xsl:text>
      <xsl:value-of select="year" />
      <xsl:text>), </xsl:text> 
      <xsl:text>pp. </xsl:text>
      <xsl:value-of select="pages" />. 

    </xsl:for-each>

    <xsl:text>

    </xsl:text>

  </xsl:template>

  <xsl:template match="authors">
    <xsl:for-each select="author">
      <xsl:value-of select="." /><xsl:if test="position()!=last()">, </xsl:if>
    </xsl:for-each>
  </xsl:template>


</xsl:stylesheet>
