<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<title>VAS</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/loginStyle.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/scripLogin.js"
	defer></script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="card card-login" style="width: 25rem;">
				<div class="icon-login">
					<i class="fas fa-user fa-5x"></i>
				</div>
				<div class="header-login text-center">
					<h2>Member Login</h2>
					<label class="errorLogin">${message}</label>
				</div>
				<form:form
					action="${pageContext.request.contextPath}/j_spring_security_check"
					method="post" modelAttribute="employee" class="form-login"
					id="formLogin" name="formLogin">
					<div class="form-group ">
						<form:input type="text" path="username" class="form-control"
							id="InputEmailLogin" name="InputEmailLogin"
							aria-describedby="emailHelp" placeholder="Username" size="50" />
						<form:errors path="username" cssClass="error" />
					</div>
					<div class="form-group">
						<form:input type="password" path="password" class="form-control"
							id="InputPasswordLogin" name="InputPasswordLogin"
							placeholder="Password" size="50" />
						<form:errors path="password" cssClass="error" />
					</div>
					<button type="submit" class="btn btn-success btn-login">Login</button>
				</form:form>
				<div class="card-header text-center">Forgot Password</div>
			</div>
		</div>
	</div>
</body>

</html>
