<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="n-docbody" >
    <xsl:apply-templates select="text/p"/>
    <xsl:apply-templates select="text/p/xref"/>
    <table>
      <tbody>
        <tr>
          <xsl:apply-templates select="text/p/table/tgroup/thead/row"/>
        </tr>
        <tr>
          <xsl:apply-templates select="text/p/table/tgroup/tbody/row"/>
        </tr>
      </tbody>
    </table>
    <xsl:apply-templates select="copyright-message"/>
  </xsl:template>

  <xsl:template match="p" >
    <div>
      <xsl:value-of select="./text()"/>
    </div>
  </xsl:template>

  <xsl:template match="p/xref" >
    <xsl:value-of select="./text()"/>
  </xsl:template>

  <xsl:template match="row" >
    <td>
      <xsl:value-of select="."/>
    </td>
  </xsl:template>
  
  <xsl:template match="copyright-message" >
    <div>
      <xsl:value-of select="./text()"/>
    </div>
  </xsl:template>

  <xsl:template match="text() | @*"/>

</xsl:stylesheet>
