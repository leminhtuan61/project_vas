$('.search-btn').on('click', function (e) {
    if ($('.custom-select1').hasClass('hdn')) {
        $('.custom-select1').removeClass('hdn')
    } else {
        $('.custom-select1').addClass('hdn')
    }
});
$('.home').on('click', function (e) {
	var contextPath = $(this).attr("contextPath");
	console.log(contextPath);
	document.location = contextPath + "/index";
});
$("#encodings1").change(function() {
	var val = document.getElementById("encodings1").value;
if(val === "Customes List"){
	var contextPath = $(this).attr("contextPath");
	$.get({
		url : contextPath + "/listCustomer",
		success : function(response) {
			$("#mainContent").html(response);
		},
	});
};
if(val === "Create Customer"){
	var contextPath = $(this).attr("contextPath");
	$.get({
		url : contextPath + "/addCustomer",
		success : function(response) {
			$("#mainContent").html(response);
		},
	});
};
if(val === "Injection Result List"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/injectionResult/list";
};
if(val === "Create Injection Result"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/injectionResult/create";
};
if(val === "News List"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/news/list";
};
if(val === "Create News"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/news/create";
};
if(val === "Report Injection"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/report/listInject";
};
if(val === "Report Customer"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/report/listCustomer";
};

if(val === "Report Vaccine"){
	var contextPath = $(this).attr("contextPath");
	document.location = contextPath + "/report/listVaccine";
};
})
function myFunction() {
  var x = document.getElementById("encodings").value;
console.log(x);
}

$('#btnFillter').on('click', function (e) {
	/*var contextPath = $(this).attr("contextPath");
	console.log(contextPath);*/
	location.reload();
});
