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
<style>
  

.error {
	width: 100%;
	height: auto;
	margin: 50px auto;
	text-align: center;
	margin-bottom: 0;
}

.dracula{
	width: 230px;
	height: 300px;
	display: inline-block;
	margin: auto;
	overflowX: hidden;
}

.error .p {
	height: 100%;
	color: #009688; 
	font-size: 280px;
	margin: 50px;
	display: inline-block;
	font-family: 'Anton', sans-serif;
	font-family: 'Combo', cursive;
}

.con {
  width: 500px;
  height: 500px;
  position: relative;
  margin: 9% auto 0;
animation: ani9 0.7s ease-in-out infinite  alternate ;}

@keyframes ani9 {
    0%{
    transform: translateY(10px);	
  }
  
  100%{
    transform: translateY(30px);	
  }

}

.con > * {
  position: absolute;
  top: 0; left: 0;
}

.hair{
  top: -20px;
  width: 210px;
  height: 200px;
  background: #009688;
  border-radius: 0 50% 0 50%;
  transform: rotate(45deg);
  background: #33265C;
}

.hair-r{
  left: 20px;
  width: 210px;
  height: 200px;
  background: #009688;
  border-radius: 0 50% 0 50%;
  transform: rotate(45deg);
  background: #33265C;
}

.head {
  width: 200px;
  height: 200px;
  background: #009688;
  border-radius: 0 50% 0 50%;
  transform: rotate(45deg);
}

.eye {
 width: 20px; height:20px;
  background: #111113;
  border-radius: 50%;
  top: 15%; left: 11.5%;
  transition: .3s linear;
}

.eye-r{left: 24%;}

.mouth {
  width: 60px; 
  height: 20px;
  background: #840021;
  top: 20%;
  left: 14%;
  border-radius: 50% / 0 0 100% 100%;
}

.mouth::after{

  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
  border-top: 13px solid #FFFFFF;
  left: 10px;
  
}
.mouth::before{
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
  border-top: 13px solid #FFFFFF;
  left: 40px;
}

.blod {
  width: 8px;
  height: 20px;
  background: #840021;
  top: 23%; left: 17%; 
  border-radius: 20px;
}
.blod::after{
   width: 2px;
  height: 10px;
  background: #FFF;
  top: 20%; left: 10%; 
  border-radius: 20px;
  
}
.blod2 {
  top: 23%; left: 20%;
  width: 13px;
  height: 13px;
  border-radius: 50% 50% 50% 0;
  transform: rotate(130deg);
  animation: blod 2s linear infinite;
  opacity: 0;
}
@keyframes blod {
  0%   {opacity: 1;}  
  100%   {background:red; opacity: 0; top:50%;}
  
  
}
/* page-ms */
.page-ms {transform: translateY(-50px);}

.error p.page-msg {
	text-align: center;
	color: #009688; 
	font-size: 30px;
	font-family: 'Combo', cursive;
	margin-bottom: 20px;
}
</style>


<body>
	<!-- Begin navbar  -->
	<nav style="background-color: #009688;"
		class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand text-white" href="${pageContext.request.contextPath}/index">VAS</a>
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
									List
								</li>
								<li class="list-group-item"
									contextPath="${pageContext.request.contextPath}"
									id="customer-add">Create Customer
								</li>
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
									<a href="${pageContext.request.contextPath}/injectionResult/list"
									   id="injectionResultList">
										<li class="list-group-item">Injection Result List</li>
									</a>
									<a href="${pageContext.request.contextPath}/injectionResult/create"
									   id="injectionResultCreate">
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

			<section class="mainPage col-9" id="mainContent">

				<div class="error">
                    <p class="p">4</p>
                    <span class="dracula">
                        <div class="con">
                            <div class="hair"></div>
                            <div class="hair-r"></div>
                            <div class="head"></div>
                            <div class="eye"></div>
                            <div class="eye eye-r"></div>
                            <div class="mouth"></div>
                            <div class="blod"></div>
                            <div class="blod blod2"></div>
                        </div>
                    </span>
                    <p class="p">4</p>

                    <div class="page-ms">
                        <p class="page-msg"> Oops, the page you're looking for Disappeared </p>

                    </div>
                </div>

            <iframe style="width:0;height:0;border:0; border:none;" scrolling="no" frameborder="no" allow="autoplay"
                src="https://instaud.io/_/2Vvu.mp3"></iframe>

			</section>
			<!-- End Content 1  -->
		</div>
		<!-- end main  -->
	</div>

	<!-- DataTables -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.12.0/additional-methods.js"></script>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/home.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/newsList.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/report.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script>
		$(document).ready(function() {
			$('#listCustomer').DataTable({
				"lengthMenu" : [ [ 5, 15, 25, -1 ], [ 5, 15, 25, "All" ] ]

			});
		});
	</script>
</body>

</html>
