$(document).ready(function () {

    $("#deleteSelected").click(function () {

        var contextPath = $(this).attr("contextPath");

        var userSelected = [];
        $('.customerBody input:checked').each(function () {
            userSelected.push($(this).attr('value'));
        });
        var checked = $("#listCustomer input[type=checkbox]:checked").length;
        if (checked < 1) {
            swal("Error", "Please choose one customer to delete", "error");
            return false;
        }


        console.log(userSelected);
        Swal.fire({
            title: "Are you sure?",
            text: "Do you want to delete it?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#009688",
            confirmButtonText: "Yes, delete it!",
        }).then(result => {

            if (result.value) {

                $.get({

                    url: contextPath + "/customer/delete?ids=" + userSelected,

                    success: function (response) {
                        swal("Deleted!", "Your file has been deleted.", "success");
                        $("#action").html(response);

                    },
                    statusCode: {
                        403: function (response) {
                            $("body").load("/403");
                        },
                    }
                });
            } else {
                swal("Cancelled", "Canceled Successfully.", "error");
            }
            swall.closeModal();
        });
    });
    $("#checkAll").click(function () {
        $('input:checkbox').not(this).prop('checked', this.checked);
    })

    $(function () {
        $("#btnUpdate").click(function () {
            var userSelected = [];

            $('.customerBody input:checked').each(function () {
                userSelected.push($(this).attr('value'));
            });

            var contextPath = $(this).attr("contextPath");
            var checked = $("#listCustomer input[type=checkbox]:checked").length;
            if (checked > 1) {
                swal("Error", "You are not allowed to select more than 1 checkbox when updating", "error");
                return false;
            } else if (checked < 1) {
                swal("Error", "You should choose at least 1 field to update", "error");
                return false;

            } else {
                $.get({
                    url: contextPath + "/customer/update?id=" + userSelected,
                    success: function (response) {
                        $("#mainContent").html(response);
                        return true;

                    },
                    statusCode: {
                        403: function (response) {
                            $("body").load("/403");
                        },
                    }
                });


            }
        })
    })
    $("#btnNew").click(function () {
        var userSelected = [];

        $('.customerBody input:checked').each(function () {
            userSelected.push($(this).attr('value'));
        });

        var contextPath = $(this).attr("contextPath");
        var checked = $("#listCustomer input[type=checkbox]:checked").length;
        if (checked > 0) {
            swal("Error", "Please clear the checkbox before adding new", "error");
            return false;

        } else {
            $.get({
                url: contextPath + "/addCustomer",
                success: function (response) {
                    $("#mainContent").html(response);
                    return true;

                },
                statusCode: {
                    403: function (response) {
                        $("body").load("/403");
                    },
                }
            });


        }
    })

});
$(document).ready(function () {

    $("#customer-add").click(function () {
        var contextPath = $(this).attr("contextPath");
        $.get({
            url: contextPath + "/addCustomer",
            success: function (response) {
                $("#mainContent").html(response);

            },
        });
    })
});
