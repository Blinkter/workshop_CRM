<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<%@ include file="../header.jsp" %>
		
		<h1>Czy chcesz samochód: ${vehicle.brand} ${vehicle.model} ${vehicle.year}?</h1>
	
		<form action="vehicleDelete" method="post">
			<button name="id" type="submit" value="${vehicle.id }">Usuń</button>	
		</form>
		
		<%@ include file="../footer.jsp" %>
	</div>

</body>
</html>