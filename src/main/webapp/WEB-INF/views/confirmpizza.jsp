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

	<h1>Generic Pizza Restaurant | Pizza Builder | Confirmation</h1>
	<a href="pizzabuilder">Back</a> | <a href="/">Home</a>
		<h2>Confirm Pizza</h2>
		
			Size: ${ size }<br />
			Number of Toppings: ${ toppingCount }<br />
			Gluten-Free Crust? ${ glutenFree }<br />
			Special Instructions: ${specialInstructions } <br />
			<br />
			Price: ${ price }<br />
		
<form method="get" action="/">
		<input type="submit" value="Confirm" />
	</form>

</body>
</html>