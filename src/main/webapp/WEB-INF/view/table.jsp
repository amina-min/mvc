<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container p-5">
		<div class="col-md-6">
			<h1>User Table</h1>	
				${param['message']}
			<table class="table table-bordered border-primary">

				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">name</th>
						<th scope="col">address</th>
						<th scope="col">gender</th>
						<th scope="col">subject</th>
						<th scope="col">location</th>
						<th scope="col">action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${list}">
						<tr>
							<th scope="row">${u.id}</th>
							<td>${u.name}</td>
							<td>${u.address}</td>
							<td>${u.gender}</td>
							<td>${u.subject}</td>
							<td>${u.location}</td>
							<td>
							<a href="/edit/${u.id}">Edit</a>
							<a href="/delete/${u.id}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
<a href="/">user form</a>
		</div>
	</div>
</body>
</html>