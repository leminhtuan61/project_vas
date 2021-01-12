$(document).ready(function() {

	$("#btnCancel").click(function() {
		var contextPath = $(this).attr("contextPath");

		$.get({
			url: contextPath + "/listCustomer",

			success: function(response) {
				$("#mainContent").html(response);
			},

		});
	})
});
$(document).ready(function() {

	$("#btnCaptcha").click(function() {
		var contextPath = $(this).attr("contextPath");

		$.get({
			url: contextPath + "/refreshCaptcha",

			success: function(response) {
				$("#content-captcha").html(response);

			},

		});
	})
});
$(document).ready(function() {
	$("#customer-form").validate({
		errorClass: "error",
		rules: {
			fullName: {
				required: true,
				maxlength: 100
			},
			dateOfBirth: {
				required: true,
			},
			password: {
				required: true,
				maxlength: 20
			},
			rePassword: {
				equalTo: "#password",
				maxlength: 20
			},
			username: {
				required: true,
				maxlength: 10
			},
			email: {
				required: true,
				maxlength: 25
			},
			identityCard: {
				required: true,
				maxlength: 10
			},
			phone: {
				required: true,
				maxlength: 11
			},
			captcha: {
				required: true,
			},
			gender: {
				required: true,
			},
			address: {
				required: true,
				maxlength: 100
			}
		},
		messages: {
			fullName: {
				required: "FullName must be not empty!",
				maxlength: "FullName must contain at maximum 100 character"
			},
			dateOfBirth: {
				required: "DateOfBirth must be not empty!",
			},
			password: {
				required: "Password must be not empty!",
				maxlength: "Password must contain at maximum 20 character"
			},
			rePassword: {
				equalTo: "Re-Password did not match !",
				maxlength: "Password must contain at maximum 20 character"

			},
			username: {
				required: "UserName must be not empty!",
				maxlength: "UserName must contain at maximum 10 character"
			},
			email: {
				required: "Email must be not empty!",
				maxlength: "Email must contain at maximum 25 character"
			},
			identityCard: {
				required: "IdentityCard must be not empty!",
				maxlength: "IdentityCard must contain at maximum 10 character"
			},
			phone: {
				required: "PhoneNumber must be not empty!",
				maxlength: "PhoneNumber must contain at maximum 11 character"
			},
			captcha: {
				required: "Captcha must be not empty!",
			},
			gender: {
				required: "Gender must be not empty!",
			},
			address: {
				required: "Address must be not empty!",
				maxlength: "Address must contain at maximum 100 character"
			}
		},
		errorPlacement: function(error, element) {
			console.log(error);
			if (element.attr("name") == "fullName") {
				$("#fullNameErr").append(error);
			} else if (element.attr("name") == "dateOfBirth") {
				$("#dateOfBirthErr").append(error);
			} else if (element.attr("name") == "password") {
				$("#passwordErr").append(error);
			} else if (element.attr("name") == "rePassword") {
				$("#rePasswordErr").append(error);
			} else if (element.attr("name") == "username") {
				$("#usernameErr").append(error);
			} else if (element.attr("name") == "email") {
				$("#emailErr").append(error);
			} else if (element.attr("name") == "identityCard") {
				$("#identityCardErr").append(error);
			} else if (element.attr("name") == "phone") {
				$("#phoneErr").append(error);
			} else if (element.attr("name") == "captcha") {
				$("#captchaErr").append(error);
			} else if (element.attr("name") == "gender") {
				$("#genderErr").append(error);
			} else if (element.attr("name") == "address") {
				$("#addressErr").append(error);
			}

		},
	
	});

});