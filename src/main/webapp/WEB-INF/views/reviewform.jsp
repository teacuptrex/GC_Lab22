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

	<h1>Generic Pizza Restaurant | Leave a Review</h1>
	
	<form method="post" action="/confirmreview">
		Name: <input type="text" name="name" /><br />
		Comment: <input type="text" name="comment" /><br />
		Rating: <input type="number" name="rating" /><br />
	<input type="submit" /><br />
	</form>
	
	<br /><br />
	<a href="/">Return Home</a>

</body>
</html>