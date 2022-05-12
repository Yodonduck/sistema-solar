<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html lang="es">

	<head>
		<title>El sistema solar</title>
		<meta charset="UTF-8"/>
		<meta name="author" content="Daniel Mora"/>
		<link rel="stylesheet" type="text/css" href="../../css/estilo.css"/>
		<link rel="stylesheet" type="text/css" href="estiloxsl.css"/>
		<link rel="shortcut icon" href="../../img/icono.png"/>
	</head>

	<body>
		<div id="container">
			<header id="main-header">
				<a href="../../index.html"><h1>El Sistema Solar</h1></a>
			</header>
			
			<menu id="main-menu">
				<li><a href="../../html/mercurio.html">Mercurio</a></li>
				<li><a href="../../html/venus.html">Venus</a></li>
				<li><a href="../../html/tierra.html">Tierra</a>
					<ul>
						<li><a href="../../html/tierra.html#luna">Luna</a></li>
					</ul>
				</li>
				<li><a href="../../html/marte.html">Marte</a></li>
				<li><a href="../../html/jupiter.html">Júpiter</a>
					<ul>
						<li><a href="../../html/jupiter.html#io">Ío</a></li>
						<li><a href="../../html/jupiter.html#europa">Europa</a></li>
						<li><a href="../../html/jupiter.html#ganimedes">Ganímedes</a></li>
						<li><a href="../../html/jupiter.html#calisto">Calisto</a></li>
					</ul>
				</li>
				<li><a href="../../html/saturno.html">Saturno</a>
					<ul>
						<li><a href="../../html/saturno.html#titan">Titán</a></li>
					</ul>
				</li>
				<li><a href="../../html/urano.html">Urano</a></li>
				<li><a href="../../html/neptuno.html">Neptuno</a>
					<ul>
						<li><a href="../../html/neptuno.html#triton">Tritón</a></li>
					</ul>
				</li>
				<li><a href="../../html/planetas-enanos.html" class="dwarf">Planetas enanos</a>
					<ul>
						<li><a href="../../html/planetas-enanos.html#ceres">Ceres</a></li>
						<li><a href="../../html/planetas-enanos.html#pluton">Plutón</a></li>
						<li><a href="../../html/planetas-enanos.html#haumea">Haumea</a></li>
						<li><a href="../../html/planetas-enanos.html#makemake">Makemake</a></li>
						<li><a href="../../html/planetas-enanos.html#eris">Eris</a></li>
					</ul>
				</li>
				<li><a href="../../xml/index.html">XML</a></li>
			</menu>
			
			<div id="formulario">
				<header>
					<h2>PLANETAS CON MÁS GRAVEDAD QUE LA TIERRA</h2>
				</header>
				
				<table>
					<tr>
						<th>Nombre</th>
						<th>Gravedad</th>
					</tr>
					<xsl:for-each select="/sistema-solar/planeta">
						<xsl:if test="./gravedad &gt; 9.81">
							<tr class="mayor">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="gravedad"/> m/s<sup>2</sup></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				
				<header>
					<h2>PLANETAS CON MENOS GRAVEDAD QUE LA TIERRA</h2>
				</header>
				
				<table>
					<tr>
						<th>Nombre</th>
						<th>Gravedad</th>
					</tr>
					<xsl:for-each select="/sistema-solar/planeta">
						<xsl:if test="./gravedad &lt; 9.81">
							<tr class="menor">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="gravedad"/> m/s<sup>2</sup></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</div>
			
		</div>
	</body>

	</html>

</xsl:template>
</xsl:stylesheet>