<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="doctype" >
    <div>
      <xsl:value-of select="./text()"/>
    </div>
  </xsl:template>

  <xsl:template match="resultList" >
    <div>
      <xsl:value-of select="./title/text()"/>
    </div>
  </xsl:template>
  <xsl:template match="document-data" >
    <div>
      <xsl:value-of select="./title/text()"/>
    </div>
  </xsl:template>

  <xsl:template match="text/p[1]" >
    <div>
      <xsl:value-of select="./text()"/>
    </div>
  </xsl:template>
  
  <xsl:template match="text/p[2]" >
    <div>
      <xsl:value-of select="./text()"/>
      <xsl:for-each select="./xref">
        <a href="testLink">
          <xsl:value-of select="./text()"/>
        </a>
      </xsl:for-each>
    </div>
  </xsl:template>
  
  <xsl:template match="table">
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
  
  <xsl:template match="copyright-message">
    <div>
      <div>
        <xsl:value-of select="./text()"/>    
      </div>
    </div>
    <table>
      <tbody>
        <tr>
          <td>End of Document</td>
          <td>© 2018 Thomson Reuters.</td>
        </tr>
      </tbody>
    </table>
  </xsl:template>

  <xsl:template match="text() | @*"/>
  
</xsl:stylesheet>
