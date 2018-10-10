<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <div>
          <xsl:value-of select="Document/n-docbody/metadata.block/md.identifiers/md.cites/md.primarycite"/>
        </div>
        <div>
          <strong>
            <xsl:value-of select="Document/n-docbody/metadata/doctype"/>
          </strong>
        </div>
        <div>
          <xsl:value-of select="Document/n-metadata/resultList/title"/>
        </div>
        <div>
          <xsl:value-of select="Document/document-data/title"/>
        </div>
        <div>
          <xsl:value-of select="Document/n-docbody/text/p[1]"/>
        </div>
        <div>
          <xsl:value-of select="Document/n-docbody/text/p[2]/text()"/>
          <xsl:for-each select="Document/n-docbody/text/p[2]/xref">
            <a href="testLink">
              <xsl:value-of select="./text()"/>
            </a>
          </xsl:for-each>
        </div>
        <div>
          <table>
            <tbody>
              <tr>
                <xsl:for-each select="Document/n-docbody/text/p[3]/table/tgroup/thead/row/entry">
                  <th>
                    <xsl:value-of select="./text()"/>
                  </th>
                </xsl:for-each>
              </tr>
              <xsl:for-each select="Document/n-docbody/text/p[3]/table/tgroup/tbody/row">
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
        <div>
          <div>
            <xsl:value-of select="Document/n-docbody/copyright-message/text()"/>
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
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>