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
			<h1>User Form</h1>
			<%
			Object msg = request.getAttribute("message");
			out.print(msg != null ? msg : "");
			%>
			<form action="/save" method="post">
				<div class="form-group">
					<label for="name">Name</label> <input type="text"
						class="form-control" id="name" placeholder="Enter name"
						name="name">
				</div>
				<div class="form-group">
					<label for="address">address</label>
					<textarea class="form-control" id="address"
						placeholder="Enter address" name="address"></textarea>
				</div>
				<div class="form-group">
					<label for="gender">Gender</label> <input type="radio" id="gender"
						name="gender" value="male">Male <input type="radio"
						id="gender" name="gender" value="female">Female
				</div>
				<div class="form-group">
					<label for="subject">Subject</label> <input type="checkbox"
						id="subject" name="subject" value="html">HTML <input
						type="checkbox" id="subject" name="subject" value="css">CSS
				</div>

				<div class="form-group">
					<label for="location">location</label> <select name="location">
						<option value="-1">select</option>
						<option>Dhaka</option>
						<option>Dinajpur</option>
						<option>Thakurga</option>
					</select>
				</div>
				<button type="submit">Submit</button>
			</form>
			<a href="/users">user info</a>
		</div>
	</div>
</body>
</html>