<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<div class="mt-3 mb-3 text-center">
	<h2>CREATE INJECTION RESULT</h2>
</div>
<div class="card main">
	<div class="card-body">
		<form:form
			action="${pageContext.request.contextPath}/injectionResult/save"
			method="post" modelAttribute="injectionResult" id="injectionAddForm">
			<div class="form-row">
				<div class="form-group col-md-4">
					<label class="font-weight-bold">Customer <span
						class="text-danger">(*)</span>
					</label>
					<form:select path="customer" class="form-control" name="customer">
						<form:option value="" label="- Select Customer" />
						<form:options items="${customer}" itemValue="customerId"
							itemLabel="displayCustomer" />
					</form:select>
					<form:errors path="customer" cssClass="error" cssStyle="color: red" />
					<span id="customerError" class="error" style="color: red"></span>
				</div>
				<div class="form-group col-md-4">
					<label for="inputPrevention" class="font-weight-bold">Prevention
						<span class="text-danger">(*)</span>
					</label>
					<form:select id="inputPrevention"
						class="form-control mdb-select md-form" path="prevention"
						name="prevention" onchange="filter()">
						<form:option value="" label="- Select Prevention" />
						<form:options items="${vaccineTypeList}" itemValue="vaccineTypeId"
							itemLabel="vaccineTypeName" />
					</form:select>
					<form:errors path="prevention" cssClass="error"
						cssStyle="color: red" />
					<span id="preventionError" class="error" style="color: red"></span>
				</div>
				<div class="form-group col-md-4">
					<label class="font-weight-bold">Vaccine name <span
						class="text-danger">(*)</span></label>
					<form:select id="vaccine" path="vaccine" class="form-control"
						name="vaccine">
						<form:option value="" label="- Select vaccine name" />
                        <<form:options items="${vaccineList}"
							itemValue="vaccineId" itemLabel="vaccineName" />
					</form:select>
					<form:errors path="vaccine" cssClass="error"
						cssStyle="color: #ff0000" />
					<span id="vaccineError" class="error" style="color: red"></span>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-4">
					<label for="numberOfInjection" class="font-weight-bold">Injection
						<span class="text-danger">(*)</span>
					</label>
					<form:input path="numberOfInjection" type="number"
						id="numberOfInjection" name="numberOfInjection"
						class="form-control" />
					<form:errors path="numberOfInjection" id="injection-error"
						name="injection-error" cssClass="error" cssStyle="color: red" />
					<span id="injectionError" class="error" style="color: red"></span>
				</div>
				<div class="form-group col-md-4">
					<label for="injectionDate" class="font-weight-bold">Date of
						Injection</label>
					<form:input type="date" class="form-control" name="injectionDate"
						placeholder="" path="injectionDate" />
					<form:errors path="injectionDate" id="dateInjection-error"
						name="dateInjection-error" cssClass="error" cssStyle="color: red" />
					<span id="dateInjectionError" class="error" style="color: red"></span>
				</div>
				<div class="form-group col-md-4">
					<label for="nextInjectionDate" class="font-weight-bold">Next
						Injection appointment</label>
					<form:input type="date" class="form-control"
						name="nextInjectionDate" placeholder="Next Injection Appointment"
						path="nextInjectionDate" />
					<form:errors path="nextInjectionDate" id="nextDateInjection-error"
						name="nextDateInjection-error" cssClass="error"
						cssStyle="color: red" />
					<span id="nextDateError" class="error" style="color: red"></span>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-4">
					<label class="font-weight-bold">Place of Injection<span
						class="text-danger">(*)</span></label>
					<form:select name="injectionPlace" class="form-control"
						path="injectionPlace">
						<form:option value="${null}" label="- Select Place of Injection" />
						<form:option value="Hilo Medical Center">Hilo Medical Center</form:option>
						<form:option value="Kohala Hospital">Kohala Hospital</form:option>
						<form:option value="Kona Community Hospital">Kona Community Hospital</form:option>
						<form:option value="Howard University Hospital">Howard University Hospital</form:option>
						<form:option value="Children's National Medical Center">Children's National Medical Center
                        </form:option>
					</form:select>
					<form:errors path="injectionPlace" id="injectionPlace-error"
						cssClass="error" cssStyle="color: red" />
					<span id="placeError" class="error" style="color: red"></span>
				</div>
			</div>
			<br>
			<br>
			<button type="submit" id="btnSave" class="btn btn-success">Save</button>
			<button type="reset" id="btnReset" class="btn btn-primary">Reset</button>
			<a href="${pageContext.request.contextPath}/index" type="button"
				id="btnCancel" class="btn btn-warning">Cancel</a>
		</form:form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/injectionResult.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/injectionResultValidate.js"></script>
</body>

</html>