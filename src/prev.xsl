<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html lang="pt-PT">
			<meta charset="utf-8"/>
			<head>
				<style>
					table {
					font-family: arial, sans-serif;
					border-collapse: collapse;
					width: 100%;
					}

					td, th {
					border: 1px solid #dddddd;
					text-align: left;
					padding: 8px;
					}

					th {
					background-color: #f0f0f0; /* Tom de cinza claro */
					font-weight: bold; /* Negrito */
					}

					tr:nth-child(even) {
					background-color: #f2f2f2;
					}
				</style>
			</head>
			<body>
				<h2>Artistas com Mais de 75 Unidades Certificadas</h2>
				<table>
					<tr>
						<th style="text-align:center">Artist</th>
						<th style="text-align:center">Certified Units</th>
						<th style="text-align:center">Gold</th>
						<th style="text-align:center">Platinum</th>
						<th style="text-align:center">Multi-Platinum</th>
						<th style="text-align:center">Diamond</th>
						<th style="text-align:center">Country</th>
						<th style="text-align:center">Life Span Begin</th>
						<th style="text-align:center">Platinum Rate</th>
						<th style="text-align:center">Gold Plus Diamond</th>
					</tr>
					<xsl:for-each select="Rows/Row">
						<tr>
							<td style="text-align:center">
								<xsl:value-of select="Artist"/>
							</td>
							<td style="text-align:center">
								<xsl:value-of select="CertifiedUnits"/>
							</td>
							<td style="text-align:center">
								<xsl:value-of select="Gold"/>
							</td>
							<td style="text-align:center">
								<xsl:value-of select="Platinum"/>
							</td>
							<td style="text-align:center">
								<xsl:value-of select="MultiPlatinum"/>
							</td>
							<td style="text-align:center">
								<xsl:value-of select="Diamond"/>
							</td>
							<td style="text-align:center">
								<xsl:choose>
									<xsl:when test="normalize-space(Country) != ''">
										<xsl:value-of select="Country"/>
									</xsl:when>
									<xsl:otherwise>N/A</xsl:otherwise>
								</xsl:choose>
							</td>
							<td style="text-align:center">
								<xsl:choose>
									<xsl:when test="normalize-space(LifeSpanBegin) != ''">
										<xsl:value-of select="LifeSpanBegin"/>
									</xsl:when>
									<xsl:otherwise>N/A</xsl:otherwise>
								</xsl:choose>
							</td>
							<td style="text-align:center">
								<xsl:choose>
									<xsl:when test="string-length(PlatinumRate) > 0">
										<xsl:value-of select="PlatinumRate"/>
									</xsl:when>
									<xsl:otherwise>N/A</xsl:otherwise>
								</xsl:choose>
							</td>
							<td style="text-align:center">
								<xsl:choose>
									<xsl:when test="string-length(GoldPlusDiamond) > 0">
										<xsl:value-of select="GoldPlusDiamond"/>
									</xsl:when>
									<xsl:otherwise>N/A</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>

					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>