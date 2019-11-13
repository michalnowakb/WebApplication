<html>
<head>
    <title>HTTP Request Info</title>
</head>
<body>
<div id="content">
    <h1>Request Information</h1>
    <table width="70%" border="5">
        <tr bgcolor="lightgrey" align="center">
            <td width="30%"><b>Attribute</b></td>
            <td width="40%"><b>Value</b></td>
        </tr>
        <tr>
            <td width="30%">Method</td>
            <td width="40%">${method}</td>
        </tr>
        <tr>
            <td width="30%">Protocol</td>
            <td width="40%">${protocol}</td>
        </tr>
        <tr>
            <td width="30%">Server Name</td>
            <td width="40%">${serverName}</td>
        </tr>
        <tr>
            <td width="30%">Server Path</td>
            <td width="40%">${serverPath}</td>
        </tr>
    </table>
    <form method="get" action="http">
        <p />
        <input type="submit" value="Return" />
    </form>
</div>
</body>
</html>