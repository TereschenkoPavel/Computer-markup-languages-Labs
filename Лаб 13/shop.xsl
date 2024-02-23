<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head><title>сортировка по цене</title></head>
    <body>
        <h2>Интернет-магазин</h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Название</th>
                <th>Цена</th>
            </tr>
            <xsl:for-each select="cart/item">
            <xsl:sort select="cost" data-type="number"/>
                <tr align="center">
                    <td><xsl:value-of select="name"/> </td>
                    <td><xsl:value-of select="cost"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>