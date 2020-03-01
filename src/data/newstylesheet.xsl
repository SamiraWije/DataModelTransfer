<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : February 29, 2020, 9:46 PM
    Author     : USER
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"  version="1.0" encoding="UTF-8" indent="No"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
<!--        <html>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Country</th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="catalog/cd/title"/>
                        </td>
                        <td>
                            <xsl:value-of select="catalog/cd/artist"/>
                        </td>
                        <td>
                            <xsl:value-of select="catalog/cd/country"/>
                        </td>
                    </tr>
                </table>
            </body>
        </html>-->
        
        <students>
            <xsl:apply-templates/>
        </students>        
    </xsl:template>
    
    <xsl:template match="courses/course/students/student">
        <student>
            <xsl:attribute name="id">
                <xsl:value-of select="@id"/>
            </xsl:attribute>
            <firstName>
                <xsl:value-of select="first"/>
            </firstName>
            <lastName>
                <xsl:value-of select="last"/>
            </lastName>
            <userName>
                <xsl:value-of select="username"/>
            </userName>
        </student>
    </xsl:template>
    
</xsl:stylesheet>
