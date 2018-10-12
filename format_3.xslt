<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="Document" >
    <xsl:apply-templates select="//p"/>    
    <xsl:apply-templates select="//table"/>
    <xsl:apply-templates select="//copyright-message"/>
  </xsl:template>

  <xsl:template match="p" >
    <div>
      <xsl:value-of select="./text()" />
      <xsl:apply-templates select="xref"/>
    </div>
  </xsl:template>

  <xsl:template match="xref" >
    <xsl:value-of select="./text()"/>
  </xsl:template>

  
  <xsl:template match="copyright-message" >
    <div>
      <xsl:value-of select="./text()"/>
    </div>
  </xsl:template>

  <xsl:template match="table" >
    <div>
      <table>
        <tbody>
          <tr>
            <xsl:for-each select="./tgroup/thead/row/entry">
              <th>
                <xsl:value-of select="./text()"/>
              </th>
            </xsl:for-each>
          </tr>
          <xsl:for-each select="./tgroup/tbody/row">
            <tr>
              <td>
                <xsl:value-of select="./entry/text()"/>
              </td>
              <td>
                <a href="testLink">
                  <xsl:value-of select="./entry/img/text()"/>
                </a>
              </td>
            </tr>
          </xsl:for-each>
        </tbody>
      </table>
    </div>
  </xsl:template>

</xsl:stylesheet>
