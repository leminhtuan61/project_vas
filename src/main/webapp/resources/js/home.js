$(document).ready(function() {

    $("#customer-list").click(function () {
        var contextPath = $(this).attr("contextPath");
        $.get({
            url: contextPath + "/listCustomer",
            success: function (response) {
                $("#mainContent").html(response);

            },
        });
    })

});

$(document).ready(function() {

	$("#customer-add").click(function() {
		var contextPath = $(this).attr("contextPath");
		$.get({
			url : contextPath + "/addCustomer",
			success : function(response) {
				$("#mainContent").html(response);

			},
            statusCode: {
                403: function (response) {
                    $("body").load("/403");
                },
            }
		});
	})
		
});

