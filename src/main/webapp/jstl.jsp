<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Добро пожаловать, EL!</title>
</head>
<body>
<h1>Jstl</h1>
<h2>out</h2>
<h3><c:out value="<c:out value='user' default='defaultValue' escapeXml='true' />" escapeXml='true'/></h3>
<h3><c:out value='user' default='defaultValue' escapeXml='true'/></h3>
<br>

<h2>out</h2>
<h3><c:out value="<c:out value='\${user}' default='defaultValue' escapeXml='true' />" escapeXml='true'/></h3>
<h3><c:out value="${user}" default='defaultValue' escapeXml='true'/></h3>
<br>

<c:if test="${salary > 1000}">
    <h4>I am rich (if)</h4>
</c:if>
<br>

<c:choose>
    <c:when test="${salary >= 1000}">
        I am rich (when)
    </c:when>
    <c:when test="${1000 eq salary}">
        I am rich (when 2)
    </c:when>
    <c:otherwise>
        I am poor (when)
    </c:otherwise>
</c:choose>

<br>

<ul>
    <c:forEach items="${list}" var="item">
        <li><c:out value="${item}"/></li>
    </c:forEach>
</ul>
<br>
<ul>
    <c:forEach items="${users}" var="item">
        <li><c:out value="${item.name}"/></li>
    </c:forEach>
</ul>


</body>
</html>