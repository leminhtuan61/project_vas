<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="mt-3 mb-3 text-center">
	<h2>INJECTION CUSTOMER LIST</h2>
</div>
<div class="card">
	<div class="card-body" id="action">
		<div id="table-action">
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
								<div class="modal fade bd-example-modal-lg "
									id="myModal${list.customerId}" role="dialog">
									<div class="modal-dialog modal-lg">

										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header text-white text-center"
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
													<form>
														<div class="card">
															<div class="card-body">
																<h5 class="card-title">Personal Infomation</h5>
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
																			<input type="text" class="form-control" id="fullName"
																				placeholder="" value="${list.fullName}" readonly />

																		</div>
																		<div class="input-group mb-3"></div>

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
																			<input type="text" class="form-control"
																				id="dateOfBirth" placeholder=""
																				value="${list.dateOfBirth}" readonly />

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
																			<div class="form-control" id="c-if-gender">
																				<c:if test="${list.gender eq 1}">Male</c:if>
																				<c:if test="${list.gender eq 0}">Female</c:if>

																			</div>


																		</div>

																	</div>
																</div>
																<div class="form-row">
																	<div class="form-group pr-3 col-md-4">
																		<label for="inputIdentityCard"
																			class="font-weight-bold">Identity card <span
																			class="text-danger">(*)</span>
																		</label>
																		<div class="input-group mb-3">
																			<div class="input-group-prepend">
																				<span class="input-group-text" id="basic-addon1"><i
																					class="far fa-credit-card"></i></span>
																			</div>
																			<input type="text" class="form-control"
																				id="identityCard" placeholder=""
																				value="${list.identityCard}" readonly />

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
																			<input type="text" class="form-control" id="address"
																				placeholder="" value="${list.address}" readonly />

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
																			<input type="text" class="form-control" id="username"
																				placeholder="" value="${list.username}" readonly />

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
																			<input type="email" class="form-control" id="email"
																				placeholder="" value="${list.email}" readonly />

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
																			<input type="text" class="form-control" id="phone"
																				placeholder="" value="${list.phone}" readonly />

																		</div>


																	</div>
																</div>

															</div>
													</form>
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
				contextPath="${pageContext.request.contextPath}">New
				Customer</button>
			<button type="button" id="btnUpdate" class="btn btn-warning"
				style="color: white;"
				contextPath="${pageContext.request.contextPath}">Update
				Customer</button>
			<button type="button" id="deleteSelected" class="btn btn-danger"
				contextPath="${pageContext.request.contextPath}">Delete
				Customer</button>
		</div>


	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/list_customer.js"></script>
