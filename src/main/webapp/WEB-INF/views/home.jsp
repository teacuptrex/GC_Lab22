<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Generic Pizza Restaurant</title>
</head>
<body>

	<h1>Generic Pizza Restaurant | Home</h1>

	<img src="https://www.publicdomainpictures.net/pictures/120000/velka/pizza-1431957490WiY.jpg" />
	<h2>Specialty Pizzas</h2>
	<br />
	
	<c:forEach var="special" items="${ specials }">
	
		<a href=<c:url value="/specialtypizza/${ special.getName() }/${ special.getPrice() }" />>${ special.getName() }</a> <br />
	
	</c:forEach>
	
	<br /><br /><br />
	<h2>Build a Custom Pizza</h2>
	<form action="/pizzabuilder">
		<input type="submit" value="Build a Pizza" />
	</form>
	<br /><br /><br />
	<form action="/reviewform">
		<input type="submit" value="Leave a Review" />
	</form>
	
	
</body>
</html>