<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Generic Pizza Restaurant | Home</h1>
	
	<h2>Specialty Pizzas</h2>
	<br />
	<a href="/specialtypizza?name=meatlovers&price=14">Meat Lovers Pizza</a><br />
	<a href="/specialtypizza?name=baconchickenranch&price=13">Bacon Chicken Ranch Pizza</a><br />
	<a href="/specialtypizza?name=hawaiian&price=12">Hawaiian Pizza</a><br />
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