<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div id="content">
	<div class="mt-3 mb-3 text-center">
		<h2>UPDATE CUSTOMER INFORMATION</h2>
	</div>
	<label style="color: green">${msg}</label> <label style="color: red">${msgErr}</label>
	<form:form action="${pageContext.request.contextPath}/customer/save"
		modelAttribute="customer" method="post">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Personal Infomation</h5>
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<form:input type="hidden" class="form-control" id="customerId"
					placeholder="" path="customerId" />
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
							<form:errors path="fullName" cssClass="error" />

						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;</div>
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
							<form:errors path="password" cssClass="error" />
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
							<form:input type="text" class="form-control" id="identityCard"
								placeholder="" path="identityCard" />
							<form:errors path="password" cssClass="error" />
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
							<form:errors path="password" cssClass="error" />
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
							<form:errors path="password" cssClass="error" />
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
							<form:input type="password" class="form-control" id="password"
								placeholder="" path="password" />
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
						<label for="inputEmail" class="font-weight-bold">Email <span
							class="text-danger">(*)</span>
						</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-envelope"></i></span>
							</div>
							<form:input type="email" class="form-control" id="email"
								placeholder="" path="email" />
							<form:errors path="password" cssClass="error" />
						</div>
					</div>
					<div class="form-group pr-3 col-md-4">
						<label for="inputPhone" class="font-weight-bold">Phone <span
							class="text-danger">(*)</span>
						</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-phone-volume"></i></span>
							</div>
							<form:input type="text" class="form-control" id="phone"
								placeholder="" path="phone" />
							<form:errors path="password" cssClass="error" />
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group pr-3 col-md-4">
						<label for="inputCapcha" class="font-weight-bold">Capcha <span
							class="text-danger">(*)</span>
						</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fas fa-lock"></i></span>
							</div>
							<form:input class="form-control" path="captcha"
								placeholder="Enter Captcha" required="true" id="captcha" />
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
					contextPath="${pageContext.request.contextPath}"
					class="btn btn-primary mt-3 mb-3">Save</button>
				<button type="reset" id="btnReset"
					class="btn btn-primary mt-3  mb-3">Reset</button>
				<button type="button" id="btnCancel"
					class="btn btn-primary mt-3 mb-3">Cancel</button>
			</div>
	</form:form>
</div>
<script>
	$(document).ready(function() {

		$("#btnCaptcha").click(function() {
			var contextPath = $(this).attr("contextPath");

			$.get({
				url : contextPath + "/refreshCaptcha",

				success : function(response) {
					$("#content-captcha").html(response);

				},

			});
		})
	});
</script>
</body>

</html>