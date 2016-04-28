<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <title>Brooklyn Farm Share CSA</title>
    <link rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>">
    <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>

    <header>
        <img src="<c:url value='/images/thefarm.jpg'/>" 
             alt="Brooklyn Farm Share" width="110">
        <h1>Brooklyn Farm Share CSA</h1>
        <h2>Brooklyn's #1 place for fruit and veggies!</h2>
    </header>
    <nav id="nav_bar">
        <ul>
<!--            <li><a href="<c:url value='/admin'/>">
                    Admin</a></li>-->
<!--            <li><a href="<c:url value='/user/deleteCookies'/>">
                    Delete Cookies</a></li>-->
            <li><a href="<c:url value='/order/showCart'/>">
                    View Cart</a></li>
        </ul>
    </nav>