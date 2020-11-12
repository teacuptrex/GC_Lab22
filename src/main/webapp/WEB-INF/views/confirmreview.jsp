<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Confirm Reveiw</title>
</head>
<body>

	
	<h1>Generic Pizza Restaurant | Leave a Review | Confirmation</h1>
	<a href="/reviewform">Back</a> | <a href="/">Home</a>
	<h2>Confirm Review Below</h2>
	
	Your name: ${ name }<br />
	Comment: ${ comment }<br />
	Your rating: <c:out value="${ rating }" /><br />
	
<form method="get" action="/">
		<input type="submit" value="Confirm" />
	</form>
	
</body>
</html>