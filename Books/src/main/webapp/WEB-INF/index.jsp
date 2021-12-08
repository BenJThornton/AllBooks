<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALL BOOKS</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1> ALL BOOKS </h1>
	<table class="table">
		<tbody>
			<tr> 
				<th>Title</th>
				<th>Language</th>
				<th>Number of Pages</th>
			</tr>
			<c:forEach var="book" items="${books}">
			<tr>
				<td><a href="/books/${book.id}"> <c:out value="${book.title}"></c:out></a></td>
				<td><c:out value="${book.lang}"></c:out></td>
				<td><c:out value="${book.pages}"></c:out></td>
			</tr>
			</c:forEach>	
		</tbody>
	</table>
</body>
</html>