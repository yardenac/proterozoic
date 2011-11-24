<!-- modded from: http://stackoverflow.com/questions/2714888/xslt-to-alphabetize-xml -->
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

    <!-- Sort child elements by name, if any child has one -->
    <xsl:template match="*[*/@name]">
        <xsl:copy>
            <xsl:copy-of select="@*|text()"/>
            <xsl:apply-templates select="*">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- Identity template for everything else -->
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" />
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
