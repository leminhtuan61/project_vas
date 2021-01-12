$('input:radio[name="gendel"]').change(
	function() {
		console.log("Change");
		var contextPath = $(this).attr("contextPath");
		if ($(this).is(':checked') && $(this).val() == 'report') {
					document.location = contextPath + "/report/listCustomer";
		};
		if ($(this).is(':checked') && $(this).val() == 'chart') {
					document.location = contextPath + "/charCustomer";
		}
	});

$("#yearChoose").change(function() {
	var year = document.getElementById("yearChoose").value;
	$.get({
		url : "/chart/customer/" + year,
		success : function(response) {
			console.log(response);
			if (myChart) myChart.destroy();
			var ctx = document.getElementById('myChart').getContext('2d');
			myChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : [ 'January', 'February', 'March', 'April', 'May',
							'June', 'July', 'August', 'September', 'October',
							'November', 'December' ],
					datasets : [ {
						data : response,
						backgroundColor : 'rgba(0, 194, 153, 1)',
						borderColor : 'rgba(0, 194, 153, 1)',
						borderWidth : 1
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					},
					legend: {
				        display: false
				    },
				    tooltips: {
				        callbacks: {
				           label: function(tooltipItem) {
				                  return tooltipItem.yLabel;
				           }
				        }
				    }
				}
			});
		}
	});
});

$('#reportInjectionCustomer').DataTable({
	"lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
});
oTable = $('#reportInjectionCustomer').DataTable();
$('#fullName').keyup(function() {
	oTable.columns(1).search($(this).val()).draw();
});
$('#address').keyup(function() {
	oTable.columns(3).search($(this).val()).draw();
});
$('#selectType').on('change', function() {
	oTable.column(6)
		.search($(this).val())
		.draw();
});
$("#inputFromDate").datepicker({
	"onSelect": function(date) {
		minDateFilter = new Date(date).getTime();
		oTable.draw();
	}
}).keyup(function() {
	minDateFilter = new Date(this.value).getTime();
	oTable.draw();
});

$("#inputToDate").datepicker({
	"onSelect": function(date) {
		maxDateFilter = new Date(date).getTime();
		oTable.draw();
	}
}).keyup(function() {
	maxDateFilter = new Date(this.value).getTime();
	oTable.draw();
});
var minDateFilter = "";
var maxDateFilter = "";
$.fn.dataTableExt.afnFiltering.push(
	function(oSettings, aData, iDataIndex) {
		if (typeof aData._date == 'undefined') {
			aData._date = new Date(aData[2]).getTime();
		}
		if (minDateFilter && !isNaN(minDateFilter)) {
			if (aData._date < minDateFilter) {
				return false;
			}
		}
		if (maxDateFilter && !isNaN(maxDateFilter)) {
			if (aData._date > maxDateFilter) {
				return false;
			}
		}
		return true;
	}
);
