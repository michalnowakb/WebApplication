<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HTTP Header Info</title>
</head>
<body>
<div id="content">
    <h1>Request Information</h1>
    <br />
    <table width="80%" border="5">
        <tr bgcolor="lightgrey" align="center">
            <td width="20%"><b>Attribute</b></td>
            <td width="40%"><b>Value</b></td>
        </tr>
        <c:forEach var="myHeaders" items="${theHeaderValues}">
            <tr>
                <td width="20%">${myHeaders.key}</td>
                <td width="40%">${myHeaders.value}</td>
            </tr>
        </c:forEach>
    </table>
    <form method="get" action="http">
        <p />
        <input type="submit" value="Return" />
    </form>
</div>
</body>
</html>
