<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h2>Лист аттестаций</h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>студент</th>
                <th>оценка</th>
            </tr>
            <xsl:for-each select="list/student">
            <xsl:choose>
                <xsl:when test="mark &lt; 4">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td bgcolor="#cc3333"><xsl:value-of select="mark"/></td>
                    </tr>
                </xsl:when>
                <xsl:when test="mark &gt; 8">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td bgcolor="#33cc33"><xsl:value-of select="mark"/></td>
                    </tr>
                </xsl:when>
                <xsl:otherwise>
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="mark"/></td>
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>  
</xsl:stylesheet>