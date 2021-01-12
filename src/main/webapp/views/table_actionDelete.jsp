<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="text-center" id="msg-server">
	<b><label style="color: green">${msg}</label> <label
		style="color: red">${msgErr}</label> <label style="color: red">${msgErrEx}</label></b>
</div>
<table class="table table-bordered my-3" id="listCustomer">
	<thead>
		<tr style="background-color: #009688">
			<th class="text-center"><input type="checkbox" name=""
				id="checkAll"></th>
			<th class="text-white">Full Name</th>
			<th class="text-white">Date of Birth</th>
			<th class="text-white">Gender</th>
			<th class="text-white">Address</th>
			<th class="text-white">Identity card</th>
			<th class="text-white">Phone</th>
		</tr>
	</thead>
	<tbody class="customerBody">
		<c:forEach items="${list}" var="list" varStatus="vs">
			<tr>
				<td class="text-center"><input type="checkbox"
					value="${list.customerId}" id="checkItem"></td>
				<td><a href="#" data-toggle="modal"
					data-target="#myModal${list.customerId}"
					id="viewDetailButton${list.customerId}">${list.fullName}</a>
					<div class="modal fade " id="myModal${list.customerId}"
						role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header text-white"
									style="background-color: #009688;">
									<h5 class="modal-title" id="exampleModalLabel">Customer
										Detail</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="modal-body">
										<table class="table dtr-details" width="100%">
											<tbody>
												<tr data-dt-row="2" data-dt-column="0">
													<td>Full Name:</td>
													<td>${list.fullName}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="1">
													<td>Address:</td>
													<td>${list.address}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="2">
													<td>Date of Birth:</td>
													<td>${list.dateOfBirth}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="3">
													<td>Email :</td>
													<td>${list.email}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="4">
													<td>Gender:</td>
													<td><c:if test="${list.gender eq 1}">Male</c:if> <c:if
															test="${list.gender eq 0}">Female</c:if></td>
												</tr>
												<tr data-dt-row="2" data-dt-column="5">
													<td>Identity Card:</td>
													<td>${list.identityCard}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="6">
													<td>Phone Number:</td>
													<td>${list.phone}</td>
												</tr>
												<tr data-dt-row="2" data-dt-column="7">
													<td>User Name:</td>
													<td>${list.username}</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="modal-footer">

									<button type="button" class="btn btn-warning"
										data-dismiss="modal">Close</button>

								</div>
							</div>

						</div>
					</div></td>
				<td>${list.dateOfBirth}</td>
				<td><c:if test="${list.gender eq 1}">Male</c:if> <c:if
						test="${list.gender eq 0}">Female</c:if></td>
				<td>${list.address}</td>
				<td>${list.identityCard}</td>
				<td>${list.phone}</td>

			</tr>

		</c:forEach>

	</tbody>
</table>
</div>
<div class="mb-4 ml-4">
	<button type="button" class="btn btn-info" id="btnNew"
		contextPath="${pageContext.request.contextPath}">New Customer</button>
	<button type="button" id="btnUpdate" class="btn btn-warning"
		style="color: white;" contextPath="${pageContext.request.contextPath}">Update
		Customer</button>
	<button type="button" id="deleteSelected" class="btn btn-danger"
		contextPath="${pageContext.request.contextPath}">Delete
		Customer</button>
</div>
</div>




<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.6/js/responsive.bootstrap.min.js"></script>

<!-- DataTables -->
<script type="text/javascript" charset="utf8"
	src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script>
	$(document).ready(function() {
		$('#listCustomer').DataTable({
			"lengthMenu" : [ [ 5, 15, 25, -1 ], [ 5, 15, 25, "All" ] ]

		});
	});
</script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	crossorigin="anonymous"></script>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>




<script
	src="${pageContext.request.contextPath}/resources/js/list_customer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/home.js"></script>
</body>

</html>