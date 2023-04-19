<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="aerial">
		<!-- aerial ways -->
			<rule e="way" k="aerialway" v="*" zoom-min="12" >
				<rule e="way" k="aerialway" v="cable_car">
					<line stroke="#575757" stroke-width="0.75" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/cable_car.svg" symbol-percent="60" symbol-orientation="auto" repeat="true" repeat-gap="140" repeat-start="100" rotate="false" priority="10" />
				</rule>
				<rule e="way" k="aerialway" v="chair_lift">
					<line stroke="#575757" stroke-width="0.6" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/chair_lift.svg" symbol-percent="80" symbol-orientation="auto" repeat="true" repeat-gap="100" repeat-start="100" rotate="false" priority="10" />
				</rule>
				<rule e="way" k="aerialway" v="goods">
					<line stroke="#575757" stroke-width="0.6" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/goods.svg" symbol-percent="50" symbol-orientation="auto" repeat="true" repeat-gap="100" repeat-start="100" rotate="false" priority="10" />
				</rule>
				<rule e="way" k="aerialway" v="gondola">
					<line stroke="#575757" stroke-width="0.75" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/gondola.svg" symbol-percent="60" symbol-orientation="auto" repeat="true" repeat-gap="100" repeat-start="100" rotate="false" priority="10" />
				</rule>
				<rule e="way" k="aerialway" v="drag_lift">
					<line stroke="#575757" stroke-width="0.6" stroke-linecap="butt" />
					<lineSymbol src="file:/symbols/drag_lift.svg" symbol-percent="40" symbol-orientation="auto" repeat="true" repeat-gap="40" repeat-start="40" rotate="false" priority="10" />
				</rule>
				<rule e="way" k="aerialway" v="zip_line">
					<line stroke="#575757" stroke-width="0.6" stroke-linecap="butt" />
				</rule>
				<pathText k="name" dy="-2" font-style="bold" font-size="8" fill="#575757" stroke="#E5FFFFFF" stroke-width="1.0" />
			</rule>
    </xsl:template>

</xsl:stylesheet>
