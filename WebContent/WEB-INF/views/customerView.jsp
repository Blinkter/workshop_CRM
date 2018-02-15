<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<%@ include file="../header.jsp" %>
		
		<div class=class="table-responsive">
		<h1>Klienci</h1>
		<table class="table table-striped">
			<tr>
				<th>Imię</th>
				<th>Nazwisko</th>
				<th>Data urodzenia</th>
				<th>Samochód</th>
				<th>Opcje</th>
			</tr>
			<c:forEach items="${customers}" var="customer">
			<tr>
	    		 <td>${customer.firstname}</td>
	    		 <td>${customer.surname}</td>
	    		 <td>${customer.birthday}</td>
	    		 <td>
	    		 	<a href="vehicleView?id=${customer.id }">Pokaż</a>
				</td>
	    		 <td>
	    		 	<a href="customerEdit?id=${customer.id }">Edytuj</a>
		    		 /
		    		 <a href="customerDelete?id=${customer.id }">Usuń</a>
			     </td>
			</tr>
	 		</c:forEach>
		</table>
			<a href="customerAdd">Dodaj klienta</a>
		</div>
		<%@ include file="../footer.jsp" %>
		
	</div>

</body>
</html>