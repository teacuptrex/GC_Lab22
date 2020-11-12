<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
p {
  color: red;
  text-indent: 30px;
  text-transform: uppercase;
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Pizza Confirmation</title>
</head>
<body>

	<h1>Generic Pizza Restaurant | Pizza Builder | Confirmation</h1>
	<a href="pizzabuilder">Back</a> | <a href="/">Home</a>
		<h2>Confirm Pizza</h2>
		
			Size: ${ size }<br />
			Number of Toppings: ${ toppingCount }<br />
			Gluten-Free Crust? ${ glutenFree }<br />
			Special Instructions: <c:out value="${specialInstructions }" /> <br />
			<br />
			Price: <fmt:formatNumber value="${ price }" type="currency" currencySymbol="$" /> <br />
			
			<c:if test="${ price >=15 }"><p>FREE DELIVERY</p></c:if>
		
<form method="get" action="/">
		<input type="submit" value="Confirm" />
	</form>

</body>
</html>