<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="с" uri="http://java.sun.com/jsp/jstl/core" %>

<fmt:setLocale value= "${locale}"/>
<fmt:setBundle basename = "translations" var = "messages"/>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добро пожаловать, EL!</title>
</head>
<body>
<h1>Jstl</h1>

<fmt:message key= "login.username" bundle="${messages}"/>
<p>
<fmt:message key= "login.password" bundle="${messages}"/>
<p>
<fmt:message key="login.submit" bundle="${messages}"/>
<p>
</body>
</html>