<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
   version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Meteo</title>
                <style>
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 10px; text-align: center; }
                    th { background-color: #b3ecec; }
                    h2, h4 { font-family: Arial; }
                </style>
            </head>
            <body>
                <h2 style="text-align:center; color:blue">Tableau des Températures</h2>
                <xsl:for-each select="meteo/mesure">
                <!-- <xsl:for-each select="meteo/mesure[@date='2006-1-2']"> -->
                    <ul>
                        <li><h4 style="text-decoration:underline">Date de mesure: <xsl:value-of select="@date"/></h4></li>
                    </ul>
                    <table >
                        <tr>
                            <th>Ville</th>
                            <th>Température</th>
                        </tr>
                        <xsl:for-each select="ville">
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                                <td><xsl:value-of select="@temperature"/></td>
                            </tr>
                        </xsl:for-each>
                            <tr>
                                <td>Temperatue moyenne : </td>
                                <td><xsl:value-of select="avg(ville/@temperature)"/></td>
                            </tr>
                            <tr>
                            <td>Nombre de villes : </td>
                            <td><xsl:value-of select="count(ville)"/></td>
                            </tr>
                        
                    </table>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>