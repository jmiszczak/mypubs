<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="common-html.xsl" />

<xsl:strip-space elements="*" />

<xsl:output method="xml" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:for-each select="publications/article">
			<xsl:sort select="year" order="descending"/>

			<li>

			<xsl:apply-templates select="authors"/>
      <i><xsl:value-of select="title"/></i><xsl:text>, </xsl:text>

			<xsl:if test="string-length(journal) &gt; 0">
        <xsl:value-of select="journal" />
        <xsl:text>, </xsl:text> 
				<xsl:if test="string-length(volume) &gt; 0">
          <xsl:text>Vol. </xsl:text>
          <xsl:value-of select="volume" />
				</xsl:if>
				<xsl:if test="string-length(number) &gt; 0">
				  <xsl:text>, No. </xsl:text>
          <xsl:value-of select="number" />
				</xsl:if>

				<xsl:text> (</xsl:text>
				<xsl:value-of select="year" />
				<xsl:text>), </xsl:text>
				
				<xsl:if test="string-length(pages) &gt; 0">
					<xsl:text>pp. </xsl:text><xsl:value-of select="pages" />.
				</xsl:if>
			</xsl:if>

			<xsl:if test="string-length(book-title) &gt; 0">
        <xsl:text>In: </xsl:text>
        <xsl:value-of select="book-title" />
        <xsl:text>, </xsl:text>
        <xsl:apply-templates select="editors"/>
        <xsl:text> (eds.), </xsl:text> 
				<xsl:value-of select="year" />
			</xsl:if>

			<xsl:apply-templates select="arxiv"/> 
			<xsl:apply-templates select="doi"/> 
			<xsl:apply-templates select="pdf-file"/> 

			<xsl:text> </xsl:text>
			<a>
        <xsl:attribute name="href">
          <xsl:text>bibtex.php?key=</xsl:text>
          <xsl:value-of select="@key" /></xsl:attribute>
			    <xsl:text>[BIB]</xsl:text>
			</a>

			</li>

		</xsl:for-each>

	</xsl:template>

</xsl:stylesheet>
