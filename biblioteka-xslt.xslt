<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<body>
    <h2>Książki, które warto przeczytać</h2>
    <table border="2px solid black">
            <tr bgcolor="E9A42C">
            <th style="text-align:center">Książka</th>
            <th style="text-align:center">Autor</th>
            <th style="text-align:center">Wydawnictwo</th>
            <xsl:for-each select="biblioteka/ksiazki/ksiazka">
            <tr bgcolor="F4E1C1">
                <td><xsl:value-of select="tytul"/></td>
                <td><xsl:value-of select="autor"/></td>
                <td><xsl:value-of select="wydawnictwo"/></td>
            </tr>
    </xsl:for-each>
    </tr>
    </table>
    <table border="2px solid black">
            <tr bgcolor="F22615">
            <th style="text-align:center">Rezerwacja tytułu</th>
            <th style="text-align:center">data od</th>
            <th style="text-align:center">data do</th>
            <xsl:for-each select="biblioteka/rezerwacje/rezerwacja/tarezerwacja">
            <tr bgcolor="F78379">
                <td><xsl:value-of select="@tytul"/></td>
                <td><xsl:value-of select="data/data_od"/></td>
                <td><xsl:value-of select="data/data_do"/></td>
            </tr>
    </xsl:for-each>
    </tr>
    </table>
    
</body>
</html>

</xsl:template>
</xsl:stylesheet>
