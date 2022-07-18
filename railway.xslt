<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="railway_no_tunnel">
		<!-- platform (Bahnsteige)-->
		<rule e="way" k="railway|public_transport" v="platform" zoom-min="13" >
			<rule e="way" k="*" v="*" closed="yes">
				<area fill="#CBCBCB" />
			</rule>
			<rule e="way" k="*" v="*" closed="no">
				<line stroke="#CBCBCB" stroke-width="0.8" />
			</rule>
		</rule>

	<!-- railway (no tunnel) -->
	<rule e="way" k="railway" v="*">
		<rule e="way" k="tunnel" v="~|no">
			<!-- railway bridge casings -->
			<rule e="way" k="bridge" v="yes|movable|true">
				<rule e="way" k="railway" v="tram" zoom-min="13" cat="pub_transp">
					<line stroke="#FFFFFF" stroke-width="0.7" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="subway" zoom-min="13" cat="pub_transp">
					<line stroke="#FFFFFF" stroke-width="0.7" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="funicular" zoom-min="12">
					<line stroke="#FFFFFF" stroke-width="0.5" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="preserved" zoom-min="13">
					<line stroke="#FFFFFF" stroke-width="0.5" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="light_rail|narrow_gauge" zoom-min="12">
					<line stroke="#FFFFFF" stroke-width="0.7" stroke-linecap="butt" />
				</rule>
				<rule e="way" k="railway" v="rail" zoom-min="12">
					<line stroke="#FFFFFF" stroke-width="0.9" stroke-linecap="butt" />
				</rule>
			</rule>

			<!-- railway casings and cores -->
			<!-- Eisenbahn, auch S-Bahn -->
			<rule e="way" k="railway" v="rail" zoom-min="12" zoom-max="15" >
				<line stroke="#BF8F93" stroke-width="0.4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="rail" zoom-min="16" >
				<line stroke="#BF8F93" stroke-width="0.7" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.5" stroke-dasharray="8,12" stroke-linecap="butt" />
			</rule>
			
			<!-- Straßenbahnen -->
			<rule e="way" k="railway" v="tram" zoom-min="13" cat="pub_transp">
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>
			
			<!-- U-Bahn -->
			<rule e="way" k="railway" v="subway" zoom-min="13" cat="pub_transp">
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>
			
			<!-- Stadtbahn -->
			<rule e="way" k="railway" v="light_rail" zoom-min="13" zoom-max="15" >
				<line stroke="#BF8F93" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="light_rail" zoom-min="16" >
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>
			
			<!-- Schmalspurbahnen -->
			<rule e="way" k="railway" v="narrow_gauge" zoom-min="13" zoom-max="15">
				<line stroke="#BF8F93" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="narrow_gauge" zoom-min="16" >
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>
			
			<!-- Standseilbahn -->
			<rule e="way" k="railway" v="funicular" zoom-min="13" zoom-max="15">
				<line stroke="#BF8F93" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="funicular" zoom-min="16" >
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>
			
			<!-- Museumsbahn -->
			<rule e="way" k="railway" v="preserved" zoom-min="13" zoom-max="15">
				<line stroke="#BF8F93" stroke-width="0.3" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="preserved" zoom-min="16" >
				<line stroke="#BF8F93" stroke-width="0.5" stroke-linecap="butt" />
				<line stroke="#FFFFFF" stroke-width="0.3" stroke-dasharray="6,8" stroke-linecap="butt" />
			</rule>

		</rule>
	</rule>
    </xsl:template>

    <xsl:template name="railway_tunnel">
		<!-- railway tunnel -->
		<rule e="way" k="tunnel" v="yes">
			<rule e="way" k="railway" v="subway" zoom-min="13" cat="pub_transp">
				<line stroke="#50BF8F93" stroke-width="0.5" stroke-dasharray="8,6" stroke-linecap="butt" />
			</rule>
			
			<rule e="way" k="railway" v="tram|light_rail" zoom-min="13" cat="pub_transp">
				<line stroke="#50BF8F93" stroke-width="0.5" stroke-dasharray="8,6" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="narrow_gauge" zoom-min="13" >
				<line stroke="#90FC0101" stroke-width="0.3" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="funicular|preserved" zoom-min="13">
				<line stroke="#90FC0101" stroke-width="0.3" stroke-dasharray="4,4" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="railway" v="rail" zoom-min="12">
				<line stroke="#50BF8F93" stroke-width="0.7" stroke-dasharray="12,8" stroke-linecap="butt" />
			</rule>
		</rule>
    </xsl:template>

    <xsl:template name="railway_node">
		<rule e="node" k="railway" v="*" zoom-min="12" cat="pub_transp">
			<!-- Bahnhof -->
			<rule e="node" k="railway" v="station" zoom-min="13">
				<symbol id="id_station" src="file:/symbols/railway_station.svg" symbol-percent="60" priority="-10" />
				<rule e="node" k="*" v="*" zoom-min="15">
					<caption symbol-id="id_station" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
				</rule>
			</rule>
			<!-- Straßenbahnhaltestelle -->
			<rule e="node" k="railway" v="tram_stop" zoom-min="14">
				<symbol id="id_tram_stop" src="file:/symbols/railway_tram_stop.svg" symbol-percent="50" />
				<rule e="node" k="*" v="*" zoom-min="15">
					<caption symbol-id="id_tram_stop" k="name" dy="13" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
				</rule>
			</rule>
			<!-- Haltepunkt -->
			<rule e="node" k="railway" v="halt" zoom-min="13">
				<symbol id="id_halt" src="file:/symbols/railway_station.svg" symbol-percent="60" priority="-10"/>
				<rule e="node" k="*" v="*" zoom-min="15">
					<caption symbol-id="id_halt" k="name" dy="-4" font-style="bold" font-family="sans_serif" font-size="9" fill="#333333" stroke="#ffffff" stroke-width="1.5" />
				</rule>
			</rule>
		</rule>
    </xsl:template>

</xsl:stylesheet>
