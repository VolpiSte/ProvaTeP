<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>SismaApuane</title>
      <style>
        body {
          font-family: Arial, sans-serif;
          background-color: #f0f0f0;
          padding: 20px;
        }
        .container {
          width: 80%;
          margin: 0 auto;
          background-color: #ffffff;
          box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
          border-radius: 10px;
          padding: 20px;
        }
        h1 {
          color: #4CAF50;
          text-align: center;
        }
        table {
          width: 100%;
          border-collapse: collapse;
          margin-top: 20px;
        }
        th, td {
          text-align: left;
          padding: 15px;
          border-bottom: 1px solid #ddd;
        }
        th {
          background-color: #4CAF50;
          color: white;
        }
        tr:nth-child(even) {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <div class="container">
        <h1>Sisma-Apuane---Edifici-per-proprieta-pubblica-o-privata-e-Comune</h1>
        <table>
          <tr>
            <th>Regione</th>
            <th>Provincia</th>
            <th>Comune</th>
            <th>Proprietà Pubblica</th>
            <th>Proprietà Privata</th>
          </tr>
          <xsl:for-each select="sismaApuane/regione/provincia/comune">
            <tr>
              <td><xsl:value-of select="../../@luogo"/></td>
              <td><xsl:value-of select="../@proa"/></td>
              <td><xsl:value-of select="@nome"/></td>
              <td><xsl:value-of select="priprietaPubblica"/></td>
              <td><xsl:value-of select="proprietaPrivata"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>