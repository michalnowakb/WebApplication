<%--
  Created by IntelliJ IDEA.
  User: Michal Nowak
  Date: 11/11/2019
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTTP</title>
</head>
<body>
<h1>HTTP Information</h1>
<form method="post" action="httpChoice">
    <input type="radio" name="control" value="headers" checked />Request Headers<br />
    <input type="radio" name="control" value="paths" />Request Info<br />
    <p />
    <input type="submit" value="Continue" />
</form>
</body>
</html>
