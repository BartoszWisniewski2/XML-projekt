<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Warzywniak</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:center" colspan="2">Adres</th>
    </tr>
    <tr>
      <td>Miasto</td>
      <td><xsl:value-of select="warzywniak/sklep/adres/miejscowosc"/></td>
    </tr>
    <tr>
      <td>Ulica</td>
      <td><xsl:value-of select="warzywniak/sklep/adres/ulica"/></td>
    </tr>
    <tr>
      <td>Numer</td>
      <td><xsl:value-of select="warzywniak/sklep/adres/numer_budynku"/></td>
    </tr>
    <tr>
      <td>Kod pocztowy</td>
      <td><xsl:value-of select="warzywniak/sklep/adres/kod_pocztowy"/></td>
    </tr>
  	</table>
    <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:center" colspan="3">Pracownicy</th>
    </tr>
    <tr>
      <td>Imie</td>
      <td>Nazwisko</td>
      <td>Stanowisko</td>
    </tr>
    <xsl:for-each select="warzywniak/sklep/pracownicy/pracownik/dane">
    <tr>
		<td><xsl:value-of select="imie"/></td>
		<td><xsl:value-of select="nazwisko"/></td>
		<td><xsl:value-of select="stanowisko"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

