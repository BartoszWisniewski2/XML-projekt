<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

			<xsl:variable name="ileProduktow"
				select="count(warzywniak/produkty/produkt)" />

			<body>
				<h2 style="text-align:center">Warzywniak</h2>

				<table border="1" width="400" align="center">
					<tr bgcolor="#9acd32">
						<th style="text-align:center" colspan="2">Adres</th>
					</tr>
					<tr>
						<td>Miasto</td>
						<td>
							<xsl:value-of
								select="warzywniak/sklep/adres/miejscowosc" />
						</td>
					</tr>
					<tr>
						<td>Ulica</td>
						<td>
							<xsl:value-of select="warzywniak/sklep/adres/ulica" />
						</td>
					</tr>
					<tr>
						<td>Numer</td>
						<td>
							<xsl:value-of
								select="warzywniak/sklep/adres/numer_budynku" />
						</td>
					</tr>
					<tr>
						<td>Kod pocztowy</td>
						<td>
							<xsl:value-of
								select="warzywniak/sklep/adres/kod_pocztowy" />
						</td>
					</tr>
				</table>

				<table border="1" width="400" align="center">
					<tr bgcolor="#9acd32">
						<th style="text-align:center" colspan="3">Pracownicy</th>
					</tr>
					<tr>
						<td>Imie</td>
						<td>Nazwisko</td>
						<td>Stanowisko</td>
					</tr>
					<xsl:for-each
						select="warzywniak/sklep/pracownicy/pracownik/dane">
						<tr>
							<td>
								<xsl:value-of select="imie" />
							</td>
							<td>
								<xsl:value-of select="nazwisko" />
							</td>
							<td>
								<xsl:value-of select="stanowisko" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<table border="1" width="400" align="center">
					<tr bgcolor="#9acd32">
						<h4 style="text-align:center">
							<xsl:text>Produktów: </xsl:text>
							<xsl:value-of select="$ileProduktow" />
						</h4>
						<th style="text-align:center" colspan="3">Produkty</th>
					</tr>
					<tr>
						<td>Nazwa</td>
						<td>Cena</td>
						<td>Ilość</td>
					</tr>
					<xsl:for-each select="warzywniak/produkty/produkt">
						<tr>
							<td>
								<xsl:value-of select="nazwa" />
							</td>

							<xsl:choose>
								<xsl:when test="cena &lt; 5">
									<td bgcolor="red" style="font-weight:bold;">
										<xsl:value-of select="cena" />
											<xsl:text> </xsl:text>
										<xsl:value-of select="cena/@waluta" />
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td>
										<xsl:value-of select="cena" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="cena/@waluta" />
									</td>
								</xsl:otherwise>
							</xsl:choose>
							<td>
								<xsl:value-of select="waga" />
								<xsl:text> </xsl:text>
								<xsl:value-of select="waga/@jednostka" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

