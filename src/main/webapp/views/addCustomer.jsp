<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div id="content">
	<div class="mt-3 mb-3 text-center">
		<h2>REGISTER CUSTOMER INFORMATION</h2>
	</div>

	<label style="color: green">${msg}</label> <label style="color: red">${msgErr}</label>


	<form:form action="${pageContext.request.contextPath}/customer/save"
		modelAttribute="customer" method="post" id="customer-form">
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
							<form:input type="text" class="form-control" id="fullName"
								placeholder="" path="fullName" data-error="#fullNameErr" />

						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="fullName" cssClass="error" />
							<span id="fullNameErr" class="error"></span>

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
							<span id="dateOfBirthErr" class="error"></span>
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
								<span id="genderErr" class="error"></span>

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

						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="identityCard" cssClass="error" />
							<span id="identityCardErr" class="error"></span>
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
							<span id="addressErr" class="error"></span>

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
							<span id="usernameErr" class="error"></span>
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

						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="password" cssClass="error" />
							<span id="passwordErr" class="error"></span>

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
								id="inputPasswordConfirm" placeholder="" name="rePassword">
						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<span id="rePasswordErr" class="error"></span>
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
						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="email" cssClass="error" />
							<span id="emailErr" class="error"></span>
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
						</div>
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="phone" cssClass="error" />
							<span id="phoneErr" class="error"></span>
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
						<div class="input-group mb-3">
							<div>&emsp;&ensp;&emsp;</div>
							<form:errors path="captcha" cssClass="error" />
							<span id="captchaErr" class="error"></span>
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
					class="btn btn-primary mt-3 mb-3"
					contextPath="${pageContext.request.contextPath}">Cancel</button>
			</div>
	</form:form>
</div>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/addCustomer.js"></script>

</body>

</html>