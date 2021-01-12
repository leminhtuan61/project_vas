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
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css" rel="stylesheet"> -->
<link
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/styleDashboard.css">
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
<script src="../resources/js/scripDashboard.js" type="text/javascript"
	defer></script>

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
					<h2>REPORT INJECTION RESULT</h2>
				</div>
				<div class="card">
					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-2">
									<div class="form-group mt-2">
										<label for="carId" class="font-weight-bold">Display
											Type:</label>
										<div class="row">
											<div class="form-check form-check-inline">
												<input class="form-check-input ml-4"
													contextPath="${pageContext.request.contextPath}"
													type="radio" id="felame" name="gendel" value="report"
													required> <label class="form-check-label"
													for="felame">Report</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input"
													contextPath="${pageContext.request.contextPath}"
													type="radio" id="male" name="gendel" value="chart" required
													checked> <label class="form-check-label" for="male">Chart</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-2">
									<div class="form-group">
										<div class="form-group">
											<label for="carId" class="font-weight-bold">Select
												year</label> <select class="custom-select" id="yearChoose">
												<option value="2020" selected>2020</option>
												<option value="2019">2019</option>
												<option value="2018">2018</option>
												<option value="2017">2017</option>
											</select>
										</div>
									</div>
								</div>

							</div>
						</form>
					</div>
				</div>

				<div class="card">
					<div class="card-body">
						<section class="container mx-auto  px-0 mx-0">
							<h4 id="about_us">
								<div class="aboutUsLeft"></div>
								REPORT INJECTION CHART
							</h4>
							<hr />
							<canvas id="myChart" width="400" height="150%"></canvas>
						</section>
					</div>
				</div>

			</div>
			<!-- End Content 1  -->
		</div>
		<!-- end main  -->
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
</body>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
<script>
	var myChart;
	$.get({
		url : "/chart/injectResult",
		success : function(response) {
			console.log(response);
			var ctx = document.getElementById('myChart').getContext('2d');
			myChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : [ 'January', 'February', 'March', 'April', 'May',
							'June', 'July', 'August', 'September', 'October',
							'November', 'December' ],
					datasets : [ {
						data : response,
						backgroundColor : 'rgba(0, 194, 153, 1)',
						borderColor : 'rgba(0, 194, 153, 1)',
						borderWidth : 1
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					},
					legend : {
						display : false
					},
					tooltips : {
						callbacks : {
							label : function(tooltipItem) {
								return tooltipItem.yLabel;
							}
						}
					}
				}
			});
		}
	});
</script>
<script src="${pageContext.request.contextPath}/resources/js/report.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/home.js"></script>


</html>
