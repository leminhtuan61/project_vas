<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<head>
<title>VAS</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styleDashboard.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addNews.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addCustomer.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
</head>

<body>
	<!-- Begin navbar  -->
	<nav style="background-color: #009688;"
		class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand text-white"
			href="${pageContext.request.contextPath}/index">VAS</a>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
			</ul>
			<span class="navbar-text mr-2 text-white"> <input
				id="encodings1" contextPath="${pageContext.request.contextPath}"
				list="encodings" value=""
				class="col-sm-6 custom-select1 custom-select-sm hdn"> <datalist
					id="encodings">
					<option value="Customes List">Customes List</option>
					<option value="Create Customer">Create Customer</option>
					<option value="Injection Result List">Injection Result
						List</option>
					<option value="Create Injection Result">Create Injection
						Result</option>
					<option value="News List">News List</option>
					<option value="Create News">Create News</option>
					<option value="Report Injection">Report Injection</option>
					<option value="Report Customer">Report Customer</option>
					<option value="Report Vaccine">Report Vaccine</option>

				</datalist> <i class="fas fa-search search-btn"></i>
			</span>
		</div>
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
							<div class="mb-0 collapsed home"
								contextPath="${pageContext.request.contextPath}">
								<h2>Home</h2>
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
									<a
										href="${pageContext.request.contextPath}/injectionResult/create"
										id="btnCreate">
										<li class="list-group-item">Create Injection Result</li>
									</a>
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
									<a href="${pageContext.request.contextPath}/news/create"
										id="btnList">
										<li class="list-group-item">Create News</li>
									</a>

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
									<a href="${pageContext.request.contextPath}/report/listInject"
										id="btnList">
										<li class="list-group-item">Injection Result</li>
									</a>
									<a
										href="${pageContext.request.contextPath}/report/listCustomer"
										id="btnList">
										<li class="list-group-item">Customer</li>
									</a>
									<a href="${pageContext.request.contextPath}/report/listVaccine"
										id="btnList">
										<li class="list-group-item">Vaccine</li>
									</a>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End dashboard  -->
			<!-- Begin Content 1  -->

			<div class="col-9" id="mainContent">
				<div class="mt-3 mb-3 text-center">
					<h2>${title}</h2>
				</div>
				<form:form action="${pageContext.request.contextPath}/news/save"
					method="post" modelAttribute="news" id="createForm">
					<div class="card">
						<div class="card-body">
							<div class="form-group">
								<form:hidden path="newsId" />
								<form:hidden path="postDate" />
								<label for="title" class="font-weight-bold">Title<span
									class="text-danger">(*)</span></label> <br />
								<form:input class="form-control" type="text" name="title"
									id="inputTitle" path="title" />
								<form:errors path="title" cssClass="error"></form:errors>
								<span id="titleErr"></span>
							</div>
							<div class="form-group">
								<label for="title" class="font-weight-bold">News Type<span
									class="text-danger">(*)</span></label>
								<form:select class="custom-select" path="newsType"
									name="newsType">
									<form:option value="" label="- Select News Type -" />
									<form:options items="${newsType}" itemValue="newsTypeId"
										itemLabel="newsTypeName" />
								</form:select>
								<span id="newsTypeErr"></span>
							</div>
							<div class="form-group">
								<label for="preview" class="font-weight-bold">Preview<span
									class="text-danger">(*)</span></label>
								<form:textarea class="form-control" name="preview"
									id="inputPreview" rows="1" path="preview"></form:textarea>
								<form:errors path="preview" cssClass="error"></form:errors>
								<span id="previewErr"></span>
							</div>
							<div class="form-group">
								<label for="content" class="font-weight-bold">Content<span
									class="text-danger">(*)</span></label>
								<form:textarea class="form-control" name="txtEditor"
									id="txtEditor" rows="10" path="content"></form:textarea>
								<form:errors path="content" cssClass="error"></form:errors>
								<span style="color: red; font-style: italic;" id="contentErr"></span>
							</div>
							<button type="submit" class="btn btn-success" id="saveNews">Save</button>
							<button class="btn btn-info" type="reset" id="resetButton">Reset</button>
							<input type="button" class="btn btn-warning"
								onclick="location.href='${pageContext.request.contextPath}/news/list';"
								value="Cancel" />
						</div>
					</div>
				</form:form>
			</div>
			<!-- End Content 1  -->
		</div>
		<!-- end main  -->
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
		src=" https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js "
		integrity=" sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo "
		crossorigin=" anonymous "></script>
	<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
	<script src=" ${pageContext.request.contextPath}/resources/js/home.js "></script>
	<script
		src=" ${pageContext.request.contextPath}/resources/js/addNews.js "
		type=" text/javascript " defer></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripDashboard.js"
		type="text/javascript" defer></script>

	<script type=" text/javascript ">
		CKEDITOR.replace('txtEditor');
	</script>
</body>

</html>
