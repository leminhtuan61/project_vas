<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/injectionResult.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styleDashboard.css">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addCustomer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
</head>

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
								<li class="list-group-item pl-5" id="customer-list"
									contextPath="${pageContext.request.contextPath}">Customes
									List</li>
								<li class="list-group-item pl-5"
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
								<a href="${pageContext.request.contextPath}/news/list">
									<li class="list-group-item">News List</li>
								</a>
								<a href="${pageContext.request.contextPath}/news/create">
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
									<a href="${pageContext.request.contextPath}/report/listInject">
										<li class="list-group-item">Injection Result</li>
									</a>
									<a
											href="${pageContext.request.contextPath}/report/listCustomer">
										<li class="list-group-item">Customer</li>
									</a>
									<a href="${pageContext.request.contextPath}/report/listVaccine">
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

            <div class="mt-3 mb-3 text-center">
                <h2>CREATE INJECTION RESULT</h2>
            </div>
            <div class="card">
                <div class="card-body">
                    <form:form action="${pageContext.request.contextPath}/injectionResult/save" method="post"
                               modelAttribute="injectionResult" id="injectionAddForm">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Customer <span
                                        class="text-danger">(*)</span> </label>
                                <form:select path="customer" class="form-control">
                                    <form:option value="" label="- Select Customer"/>
                                    <form:options items="${customer}" itemValue="customerId"
                                                  itemLabel="displayCustomer"/>
                                </form:select>
                                <form:errors path="customer" cssClass="error" cssStyle="color: red"/>
                                <span id="customerError" class="error" style="color: red"></span>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputPrevention" class="font-weight-bold">Prevention <span
                                        class="text-danger">(*)</span></label>
                                <form:select id="inputPrevention" class="form-control mdb-select md-form"
                                             path="prevention" searchable="Search here.." onchange="filter()">
                                    <form:option value="" label="- Select Prevention"/>
                                    <form:options items="${vaccineTypeList}" itemValue="vaccineTypeId"
                                                  itemLabel="vaccineTypeName"/>
                                </form:select>
                                <form:errors path="prevention" cssClass="error" cssStyle="color: red"/>
                                <span id="preventionError" class="error" style="color: red"></span>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Vaccine name <span
                                        class="text-danger">(*)</span></label>
                                <form:select id="vaccine" path="vaccine" class="form-control">
                                    <form:option value="" label="- Select vaccine name"/>
                                    <<form:options items="${vaccineList}" itemValue="vaccineId"
                                                   itemLabel="vaccineName"/>
                                </form:select>
                                <form:errors path="vaccine" cssClass="error" cssStyle="color: #ff0000"/>
                                <span id="vaccineError" class="error" style="color: red"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="numberOfInjection" class="font-weight-bold">Injection <span
                                        class="text-danger">(*)</span></label>
                                <form:input path="numberOfInjection" type="number" id="numberOfInjection"
                                            name="numberOfInjection" class="form-control"/>
                                <form:errors path="numberOfInjection" id="injection-error" name="injection-error"
                                             cssClass="error" cssStyle="color: red"/>
                                <span id="injectionError" class="error" style="color: red"></span>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="dateOfInjection" class="font-weight-bold">Date of Injection</label>
                                <form:input type="date" class="form-control" id="dateOfInjection" placeholder=""
                                            path="injectionDate"/>
                                <form:errors path="injectionDate" id="dateInjection-error" name="dateInjection-error"
                                             cssClass="error" cssStyle="color: red"/>
                                <span id="dateInjectionError" class="error" style="color: red"></span>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="nextInjection" class="font-weight-bold">Next Injection
                                    appointment</label>
                                <form:input type="date" class="form-control" id="nextInjection"
                                            placeholder="Next Injection Appointment"
                                            path="nextInjectionDate"/>
                                <form:errors path="nextInjectionDate" id="nextDateInjection-error"
                                             name="nextDateInjection-error"
                                             cssClass="error" cssStyle="color: red"/>
                                <span id="nextDateError" class="error" style="color: red"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold">Place of Injection<span
                                        class="text-danger">(*)</span></label>
                                <form:select id="inputInjectionPlace" class="form-control" path="injectionPlace">
                                    <form:option value="${null}" label="- Select Place of Injection"/>
                                    <form:option value="Hilo Medical Center">Hilo Medical Center</form:option>
                                    <form:option value="Kohala Hospital">Kohala Hospital</form:option>
                                    <form:option value="Kona Community Hospital">Kona Community Hospital</form:option>
                                    <form:option
                                            value="Howard University Hospital">Howard University Hospital</form:option>
                                    <form:option
                                            value="Children's National Medical Center">Children's National Medical Center</form:option>
                                </form:select>
                                <form:errors path="injectionPlace" id="injectionPlace-error"
                                             name="nextDateInjection-error"
                                             cssClass="error" cssStyle="color: red"/>
                                <span id="placeError" class="error" style="color: red"></span>
                            </div>
                        </div>
                        <br><br>
                        <button type="submit" id="btnSave" class="btn btn-success">Save</button>
                        <button type="reset" id="btnReset" class="btn btn-primary">Reset</button>
                        <button type="button" id="btnCancel" class="btn btn-warning">Cancel</button>
                    </form:form>
                </div>
            </div>
            </section>
        <!-- End Content 1  -->
    </div>
        <!-- end main  -->
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/injectionResult.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/scripDashboard.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/injectionResultValidate.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/home.js"></script>
</body>

</html>