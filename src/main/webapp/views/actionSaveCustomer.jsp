<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<link
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styleDashboard.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addCustomer.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/scripDashboard.js"
	type="text/javascript" defer></script>
<script
	src="${pageContext.request.contextPath}/resources/js/injectionResult.js"
	type="text/javascript" defer></script>

</head>

<body>
	<!-- Begin navbar  -->
	<nav style="background-color: #009688;"
		class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand text-white" href="${pageContext.request.contextPath}/index">VAS</a>

	</nav>
	<!-- end navbar  -->
	<div class="container-fluid page">

		<!-- begin main  -->
		<div class="row main">
			<!-- begin dashboard  -->
			<section id="dashboard" class="col-3">
				<div role="tablist" aria-multiselectable="false">
					<div class="card">
						<div class="card-header card-profile" role="tab" id="profileCard">
							<div class="mb-0" data-toggle="collapse" data-parent="#dashboard"
								href="#profileCardContentId" aria-expanded="true"
								aria-controls="profileCardContentId">
								<div class="card profile-card-3">
									<div class="background-block">
										<img
											src="https://images.creativemarket.com/0.1.0/ps/2115747/910/606/m2/fpnw/wm1/jjtujjcybwkk0q54mvfyrfv6vtr0z4imdn8imnctcr2gdsr0uqlve2az79nm22wz-.jpg?1484133035&s=353df301375bc16d3d64afe83ebc38c8"
											alt="profile-sample1" class="background" />
									</div>
									<div class="profile-thumb-block">
										<img src="https://randomuser.me/api/portraits/men/41.jpg"
											alt="profile-image" class="profile" />
									</div>
									<div class="card-content">
										<h2>${userName}<small>${userName}@gmail.com.vn <i
												style="float: right;" class="fas fa-chevron-down  mt-1"></i>
											</small>
										</h2>
									</div>
								</div>

							</div>
						</div>
						<div id="profileCardContentId" class="collapse in menu-content"
							role="tabpanel" aria-labelledby="profileCard">
							<ul class="list-group list-group-flush">
								<li class="list-group-item pl-5"><i class="fa fa-user mr-2"
									aria-hidden="true"></i>User Profile</li>
								<li class="list-group-item pl-5"><a
									class="text-decoration-none"
									href="${pageContext.request.contextPath}/logout"><i
										class="fas fa-sign-out-alt mr-2"></i>Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="accordion">
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading1"
							data-toggle="collapse" data-target="#collapse1"
							aria-expanded="false" aria-controls="collapse1">
							<div class="mb-0 collapsed home"  contextPath="${pageContext.request.contextPath}">
                            <h2 >Home</h2>
                        </div>
						</div>
						<div id="collapse1" class="collapse menu-content"
							aria-labelledby="heading1" data-parent="#accordion"></div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading2"
							data-toggle="collapse" data-target="#collapse2"
							aria-expanded="false" aria-controls="collapse2">
							<div class="mb-0 collapsed">
								<h2>Employee management</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse2" class="collapse menu-content"
							aria-labelledby="heading2" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Employee List</li>
									<li class="list-group-item">Create Employee</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading3"
							data-toggle="collapse" data-target="#collapse3"
							aria-expanded="false" aria-controls="collapse3">
							<div class="mb-0 collapsed">
								<h2>Customer management</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse3" class="collapse menu-content"
							aria-labelledby="heading3" data-parent="#accordion">
							<div class="card-body">
								<li class="list-group-item" id="customer-list"
									contextPath="${pageContext.request.contextPath}">Customes
									List</li>
								<li class="list-group-item"
									contextPath="${pageContext.request.contextPath}"
									id="customer-add">Create Customer</li>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading4"
							data-toggle="collapse" data-target="#collapse4"
							aria-expanded="false" aria-controls="collapse4">
							<div class="mb-0 collapsed">
								<h2>Vaccine Type management</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse4" class="collapse menu-content"
							aria-labelledby="heading4" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Vaccine Type List</li>
									<li class="list-group-item">Create Vaccine Type</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading5"
							data-toggle="collapse" data-target="#collapse5"
							aria-expanded="false" aria-controls="collapse5">
							<div class="mb-0 collapsed">
								<h2>Injection Schedule</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse5" class="collapse menu-content"
							aria-labelledby="heading5" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Injection Schedule List</li>
									<li class="list-group-item">Create Injection Schedule</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading6"
							data-toggle="collapse" data-target="#collapse6"
							aria-expanded="false" aria-controls="collapse6">
							<div class="mb-0 collapsed">
								<h2>Injection Result</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse6" class="collapse menu-content"
							aria-labelledby="heading6" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<a
										href="${pageContext.request.contextPath}/injectionResult/list"
										id="btnList">
										<li class="list-group-item">Injection Result List</li>
									</a>
									<li class="list-group-item">Create Injection Result</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading7"
							data-toggle="collapse" data-target="#collapse7"
							aria-expanded="false" aria-controls="collapse7">
							<div class="mb-0 collapsed">
								<h2>News</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse7" class="collapse menu-content"
							aria-labelledby="heading7" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<a href="${pageContext.request.contextPath}/news/list"
										id="btnList">
										<li class="list-group-item">News List</li>
									</a>
									<li class="list-group-item">Create News</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header pt-4 menu-item" role="tab" id="heading8"
							data-toggle="collapse" data-target="#collapse8"
							aria-expanded="false" aria-controls="collapse8">
							<div class="mb-0 collapsed">
								<h2>Report</h2>
								<i style="float: right;" class="fas fa-plus mt-1"></i>
							</div>
						</div>
						<div id="collapse8" class="collapse menu-content"
							aria-labelledby="heading8" data-parent="#accordion">
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Injection Result</li>
									<li class="list-group-item">Customer</li>
									<li class="list-group-item">Vaccine</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End dashboard  -->
			<!-- Begin Content 1  -->

			<section class="mainPage col-9" id="mainContent">
				<div id="content">
					<div class="mt-3 mb-3 text-center">
						<h2>REGISTER CUSTOMER INFORMATION</h2>
					</div>
					<form:form
						action="${pageContext.request.contextPath}/customer/save"
						modelAttribute="customer" method="post">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Personal Infomation</h5>
								<div class="text-center" id="msg-server">
									<b><label style="color: green">${msg}</label> <label
										style="color: red">${msgErr}</label> <label style="color: red">${msgErrEx}</label></b>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-body">

								<div class="form-row">
									<div class="form-group pr-3 col-md-4">
										<label for="inputFullname" class="font-weight-bold">Full
											name <span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-id-card-alt"></i></span>
											</div>
											<form:input type="text" class="form-control" id="fullName"
												placeholder="" path="fullName" />

										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="fullName" cssClass="error" />

										</div>

									</div>

									<div class="form-group pr-3 col-md-4">
										<label for="inputDataOfBirth" class="font-weight-bold">Date
											of birth <span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="far fa-calendar-alt"></i></span>
											</div>
											<form:input type="date" class="form-control" id="dateOfBirth"
												placeholder="" path="dateOfBirth" />
										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="dateOfBirth" cssClass="error" />

										</div>

									</div>
									<div class="form-group pr-3 col-md-4">
										<label class="font-weight-bold">Gender<span
											class="text-danger font-weight-normal">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-venus-mars"></i></span>
											</div>
											<div class="form-control">
												<div class="form-check form-check-inline ml-5">
													<form:radiobutton class="mr-2" path="gender" value="1" />
													Male

												</div>
												<div class="form-check form-check-inline ml-5">
													<form:radiobutton class="mr-2" path="gender" value="0" />
													Female
												</div>
											</div>
											<div class="input-group mb-3">
												<div>&emsp;&ensp;&emsp;</div>
												<form:errors path="gender" cssClass="error" />

											</div>


										</div>

									</div>
								</div>
								<div class="form-row">
									<div class="form-group pr-3 col-md-4">
										<label for="inputIdentityCard" class="font-weight-bold">Identity
											card <span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="far fa-credit-card"></i></span>
											</div>
											<form:input type="text" class="form-control"
												id="identityCard" placeholder="" path="identityCard" />

										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="identityCard" cssClass="error" />

										</div>


									</div>
									<div class="form-group pr-3 col-md-4">
										<label for="inputAddress" class="font-weight-bold">Address
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-map-marker-alt"></i></span>
											</div>
											<form:input type="text" class="form-control" id="address"
												placeholder="" path="address" />

										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="address" cssClass="error" />

										</div>

									</div>
								</div>



							</div>
						</div>

						<div class="card mt-3">
							<div class="card-body">
								<h5 class="card-title">Account Information</h5>
							</div>
						</div>
						<div class="card">
							<div class="card-body">
								<div class="form-row">
									<div class="form-group pr-3 col-md-4">
										<label for="inputUsername" class="font-weight-bold">Username
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="far fa-user"></i></span>
											</div>
											<form:input type="text" class="form-control" id="username"
												placeholder="" path="username" />

										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="username" cssClass="error" />

										</div>

									</div>

									<div class="form-group pr-3 col-md-4">
										<label for="inputPassword" class="font-weight-bold">Password
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-lock"></i></span>
											</div>
											<form:input type="password" class="form-control"
												id="password" placeholder="" path="password" />

										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="password" cssClass="error" />

										</div>

									</div>
									<div class="form-group pr-3 col-md-4">
										<label for="inputPasswordConfirm" class="font-weight-bold">Password
											Confirm <span class="text-danger">(*)</span>

										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-lock"></i></span>
											</div>
											<input type="password" class="form-control"
												id="inputPasswordConfirm" placeholder="">
										</div>


									</div>
								</div>
								<div class="form-row">
									<div class="form-group pr-3 col-md-4">
										<label for="inputEmail" class="font-weight-bold">Email
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-envelope"></i></span>
											</div>
											<form:input type="email" class="form-control" id="email"
												placeholder="" path="email" />
										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="email" cssClass="error" />

										</div>


									</div>

									<div class="form-group pr-3 col-md-4">
										<label for="inputPhone" class="font-weight-bold">Phone
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-phone-volume"></i></span>
											</div>
											<form:input type="text" class="form-control" id="phone"
												placeholder="" path="phone" />
										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="phone" cssClass="error" />

										</div>


									</div>
								</div>

								<div class="form-row">
									<div class="form-group pr-3 col-md-4">
										<label for="inputCapcha" class="font-weight-bold">Capcha
											<span class="text-danger">(*)</span>
										</label>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1"><i
													class="fas fa-lock"></i></span>
											</div>
											<form:input class="form-control" path="captcha"
												placeholder="Enter Captcha" required="true" id="captcha" />
										</div>
										<div class="input-group mb-3">
											<div>&emsp;&ensp;&emsp;</div>
											<form:errors path="captcha" cssClass="error" />

										</div>

									</div>
									<div class="form-group pr-3">
										<div class="col-md-12 mt-4" id="content-captcha">
											<img src="data:image/png;base64,${captchaEncode}" />


											<button type="button" id="btnCaptcha"
												contextPath="${pageContext.request.contextPath}">
												<i class="fas fa-sync"></i>
											</button>
										</div>
									</div>
								</div>


								<button type="submit" id="btnSave"
									class="btn btn-primary mt-3 mb-3">Save</button>
								<button type="reset" id="btnReset"
									class="btn btn-primary mt-3  mb-3">Reset</button>
								<button type="button" id="btnCancel"
									class="btn btn-primary mt-3 mb-3">Cancel</button>
							</div>
						</div>

					</form:form>
				</div>


			</section>
			<!-- End Content 1  -->
		</div>
		<!-- end main  -->
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8"
		src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/home.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/addCustomer.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/newsList.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
</body>

</html>