$(document).ready(function() {
    $('.modalDetail').on(
        'click',
        function(e) {
            e.preventDefault();
            $('#theModal').modal('show').find(
                '.modal-content').load(
                $(this).attr('href'));
        });
        
    //Check all - uncheck all
    $('#checkAll').click(function(event) {
        if (this.checked) {
            // Iterate each checkbox
            $(':checkbox').each(function() {
                this.checked = true;
            });
        } else {
            $(':checkbox').each(function() {
                this.checked = false;
            });
        }
    });
    $("#deleteNews").click(function() {
		if ($('#mainContent input:checked').length == 0) {
			swal("Error", "You must choose at least one news to delete", "error");
		}
		else {
			swal({
				title: "Are you sure?",
				text: "Once deleted, you will not be able to recover this(ese) news again!",
				icon: "warning",
				buttons: true,
				dangerMode: true,
			})
				.then((willDelete) => {
					if (willDelete) {
						var newsSelected = [];
						$('#mainContent input:checked').each(function() {
							newsSelected.push($(this).attr('value'));
						});

						var contextPath = $(this).attr("contextPath");
						document.location = contextPath + "/news/delete?newsId=" + newsSelected;
					}
				});
		}
	});
	 $('#news-list').DataTable({
        "lengthMenu": [
            [5, 10, 15, -1],
            [5, 10, 15, "All"]
        ],
        aoColumns: [
            { "sWidth": "5%" },
            { "sWidth": "25%" },
            { "sWidth": "40%" },
            { "sWidth": "15%" },
            { "sWidth": "15%" }
        ]
    });
    $("#createNews").click(function() {
        var contextPath = $(this).attr("contextPath");
        document.location = contextPath + "/news/create/";
    });

    $("#updateNews").click(function() {
        if ($('#mainContent input:checked').length == 0) {
            swal("Error", "You must choose at least one news to update", "error");
        } else {
            if ($('#mainContent input:checked').length > 1) {
                swal("Error", "You cannot check 2 checkboxes to update", "error");
            } else {
                var newsSelected = [];
                $('#mainContent input:checked').each(function () {
                    newsSelected.push($(this).attr('value'));
                });
                var contextPath = $(this).attr("contextPath");
                document.location = contextPath + "/news/update/" + newsSelected;
            }
        }
    })
})
