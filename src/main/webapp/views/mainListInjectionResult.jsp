<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="mt-3 mb-3 text-center">
	<h2>INJECTION RESULT LIST</h2>
</div>
<div class="card">
	<div class="card-body" id="mainContent">
		<table class="table table-bordered" id="listInjectionResult">
			<thead>
				<tr class="top-table">
					<td class="text-center" scope="col"><input type="checkbox"
						id="selectAll" /></td>
					<td class="text-white" scope="col">Customer</td>
					<td class="text-white" scope="col">Vaccine Name</td>
					<td class="text-white" scope="col">Prevention</td>
					<td class="text-white" scope="col">Injection</td>
					<td class="text-white" scope="col">Date of Inject</td>
					<td class="text-white" scope="col">Next Inject date</td>
					<td class="text-white" scope="col">Injection Place</td>
				</tr>
			</thead>
			<tbody id="contentBody">
				<c:forEach items="${injectionResult}" var="injection">
					<tr>
						<td class="text-center" scope="row"><input type="checkbox"
							class="checkbox" value="${injection.injectionResultId}" /></td>
						<td scope="row"><c:out
								value="${injection.customer.customerId}"></c:out> - <c:out
								value="${injection.customer.fullName}"></c:out> - <c:out
								value="${injection.customer.dateOfBirth}"></c:out></td>
						<td scope="row"><c:out
								value="${injection.vaccine.vaccineName}"></c:out></td>
						<td scope="row"><c:out value="${injection.prevention}"></c:out>
						</td>
						<td scope="row"><c:out value="${injection.numberOfInjection}"></c:out>
						</td scope="row">
						<td><c:out value="${injection.injectionDate}"></c:out></td scope="row">
						<td scope="row"><c:out value="${injection.nextInjectionDate}"></c:out>
						</td>
						<td scope="row"><c:out value="${injection.injectionPlace}"></c:out>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a type="button"
			href="${pageContext.request.contextPath}/injectionResult/create"
			class="btn btn-info">Create Injection Result</a>
		<button type="button" class="btn btn-warning" id="btnUpdate">Update
			Injection Result</button>
		<button type="submit" id="deleteSelected"
			contextPath="${pageContext.request.contextPath}"
			class="btn btn-danger">Delete Injection Result</button>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/injectionResult.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/home.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/scripDashboard.js"
	type="text/javascript"></script>
</body>

</html>