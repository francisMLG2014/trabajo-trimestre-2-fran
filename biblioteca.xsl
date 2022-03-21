<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
 <xsl:template match="/">
	<html>
		<head>
			<link rel="stylesheet" type="text/css" href="biblioteca.css" />
		</head>
		<body>
			<h1>Ventana muy pequeña</h1>
			<div id="divInversivo">
      <xsl:apply-templates />
      </div>
    	</body>
	</html>
  </xsl:template>
  
  
  <xsl:template match="libro">
  	<div id="contenedorLibro">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="foto"/>
					</xsl:attribute>
				</img>
  	
  	<ul>
  		<li>
     		<h2>
     			<xsl:value-of select="titulo"/>
     		</h2>
     		
    	</li>
  		<li>
     		<p>
				<xsl:value-of select="autor"/>, <xsl:value-of select="sexo"/>
									
     		</p>
     	</li>
     	<li>
	     	<p>Fecha nacimiento: <xsl:value-of select="autor/@fechaNacimiento"></xsl:value-of>
	     	</p>
     	</li>
     	
    	<li>
						<p>Año publicación: <xsl:value-of select="fechaPublicacion/@año"></xsl:value-of>
    		</p>
    	</li>
    </ul>
    </div>
  </xsl:template>
  
</xsl:stylesheet>