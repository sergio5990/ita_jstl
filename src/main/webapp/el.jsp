<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добро пожаловать, EL!</title>
</head>
<body>
<h1>EL</h1>
<h2>from request</h2>
<h3>\${requestScope.get("requestAttr")}</h3>
<h3>${requestScope.get("requestAttr")}</h3>
<br>

<h2>from sesson</h2>
<h3>\${sessionScope.get("sessionAttr")}</h3>
<h3>${sessionScope.get("sessionAttr")}</h3>
<br>

<h2>from global</h2>
<h3>\${applicationScope.get("globalAttr")}</h3>
<h3>${applicationScope.get("globalAttr")}</h3>
<br>

<h2>bean from request </h2>
<h3>\${requestScope.get("user")}</h3>
<h3>${requestScope.get("user")}</h3>

<h3>\${requestScope.get("user").name}</h3>
<h3>${requestScope.get("user").name}</h3>
<br>

<h2>bean</h2>
<h3>\${user.name}</h3>
<h3>${user.name}</h3>

<h3>\${user.name == 'Valera'}</h3>
<h3>${user.name == 'Valera'}</h3>
<br>

<h2>bean</h2>
<h3>\${userSession.name}</h3>
<h3>${userSession.name}</h3>
<br>


</body>
</html>