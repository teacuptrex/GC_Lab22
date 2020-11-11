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

	<h1>Generic Pizza Restaurant | Pizza Builder</h1>
	
	<form method="post" action="/confirmpizza">
		Size: <select name="size">
				<option>small</option>
				<option>medium</option>
				<option>large</option>
			</select><br />
		Topping Count: <input type="number" name="toppingCount" /><br />
		Gluten-Free Crust: <input type="checkbox" name="glutenFree" /><br />
		Special Instructions: <input type="text" name="specialInstructions" /><br />
	<input type="submit" /><br />
	</form>
	
<br /><br />
	<a href="/">Return Home</a>
	

</body>
</html>