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
			<form action="/update" method="post">
				<div class="form-group">
				<input type="hidden"
						class="form-control" id="id" value="${user.id }"
						name="id">
					<label for="name">Name</label> <input type="text"
						class="form-control" id="name" placeholder="Enter name" value="${user.name }"
						name="name">
				</div>
				<div class="form-group">
					<label for="address">address</label>
					<textarea class="form-control" id="address"
						placeholder="Enter address" name="address" >${user.address }</textarea>
				</div>
				<div class="form-group">
					<label for="gender">Gender</label>
					 <input type="radio" id="gender"
						name="gender" ${user.gender ==  'male'? 'checked':'' } value="male">Male 
						
						<input type="radio"
						id="gender"  ${user.gender ==  'female'? 'checked':'' } name="gender" value="female">Female
				</div>
				<div class="form-group">
					<label for="subject">Subject</label>
					 <input type="checkbox"
						id="subject"  ${user.subject.contains('html')? 'checked':'' }  name="subject" value="html">HTML 
						
					<input
						type="checkbox" id="subject" name="subject" value="css" ${user.subject.contains('css')? 'checked':'' }>CSS
				</div>

				<div class="form-group">
					<label for="location">location</label> <select name="location">
						<option value="-1"> ${user.location}</option>
						<option>Dhaka</option>
						<option>Dinajpur</option>
						<option>Thakurga</option>
					</select>
				</div>
				<button type="submit">Update</button>
			</form>
			<a href="/users">user info</a>
		</div>
	</div>
</body>
</html>