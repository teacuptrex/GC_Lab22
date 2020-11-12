<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Specialty Pizza</title>
</head>
<body>

	<h1>Generic Pizza Restaurant | Specialty Pizza</h1>
	<br />
	<h2>Selected Pizza:</h2> 
	<br />
	<h3>${ name }</h3>
	<br />
	Price: <fmt:formatNumber value="${ price }" type="currency" currencySymbol="$" /> <br />
	
	<br />
	<a href="/">Return Home</a>
	
</body>
</html>