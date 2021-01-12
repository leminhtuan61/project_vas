$(document).ready(function () {
    $('#listInjectionResult').DataTable({
        "lengthMenu": [[5, 10, 15, 20, -1], [5, 10, 15, 20, "All"]]
    });
    const result = new URLSearchParams(window.location.search);
    const param = result.get('status');
    if (param === 'complete') {
        Command: toastr["success"]("Add successfully")

        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": false,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    }
    else {

    }
});

function filter() {
    const selectedValue = document.getElementById("inputPrevention").value;
    const vaccineTypeElement = document.getElementById("vaccine");
    $.get({
        url: "/api/injectionResult/findVaccine",
        dataType: 'text',
        data: {
            vaccineTypeId: selectedValue
        },
        success: function (response) {
            const list = JSON.parse(response);
            $('#vaccine').empty();
            $.each(list, function (index, obj) {
                const option = document.createElement('option')
                option.text = obj.vaccineName;
                option.value = obj.vaccineId;
                vaccineTypeElement.append(option);
            })
        },
        error: function (e) {
            console.log(e)
        }
    })
}

$(function () {
    $("#btnUpdate").click(function () {

        const checked = $("#listInjectionResult input[type=checkbox]:checked").length;

        const injectionResultSelected = [];

        $('#contentBody input:checked').each(function () {
            injectionResultSelected.push($(this).attr('value'));
        });

        if (checked < 1) {
            swal({
                title: "Error",
                text: "Please choose one Injection Result to update",
                type: "error",
                icon: "error",
                confirmButtonColor: "#009688",
            });
            return false;
        } else if (checked > 1) {
            swal({
                title: "Error",
                text: "You can choose only one Injection Result to update",
                type: "error",
                icon: "error",
                confirmButtonColor: "#009688",
            });
            return false;
        } else {
            const injectionResultSelected = [];
            $('#contentBody input:checked').each(function () {
                injectionResultSelected.push($(this).attr('value'));
            });
            window.location.href = "/injectionResult/edit/" + injectionResultSelected;
        }
    });
});

$(document).ready(function () {
    $("#btnCancel").click(function () {
        window.location.href = "/injectionResult/list";
    })
})

$(document).ready(function () {

    $("#deleteSelected").click(function () {

        const injectionResultSelected = [];

        let isSelectedAllChecked = false;

        $('#contentBody input:checked').each(function () {
            injectionResultSelected.push($(this).attr('value'));
        });
        const checked = $("#listInjectionResult input[type=checkbox]:checked").length;
        if (checked < 1) {
            swal({
                title: "Error",
                text: "Please choose one Injection Result to delete",
                type: "error",
                icon: "error",
                confirmButtonColor: "#009688",
            });
            return false;
        } else if (checked > 0) {
            swal({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                dangerMode: true,
                buttons: [true, "Yes, delete it!"],
            }).then((willDelete) => {
                if (willDelete) {
                    swal('Deleted!', 'Your file has been deleted.', {
                        icon: 'success',
                        buttons : ["OK",true]
                    }).then(() => {
                        const contextPath = $(this).attr("contextPath");
                        if ($(this).id === "selectAll") {
                            isSelectedAllChecked = true;
                        }
                        console.log(injectionResultSelected);

                        console.log(contextPath + "/injectionResult/delete?injectionResultIds=" + injectionResultSelected);
                        if (isSelectedAllChecked) {
                            document.location = contextPath + "/injectionResult/deleteAll"
                        } else {
                            document.location = contextPath + "/injectionResult/delete/" + injectionResultSelected;
                        }
                    });
                }
            })
        }
    })
})

//select all checkboxes
$("#selectAll").change(function () {  //"select all" change
    $(".checkbox").prop('checked', $(this).prop("checked")); //change all ".checkbox" checked status
});

//".checkbox" change
$('.checkbox').change(function () {
    //uncheck "select all", if one of the listed checkbox item is unchecked
    if (false === $(this).prop("checked")) { //if this item is unchecked
        $("#select_all").prop('checked', false); //change "select all" checked status to false
    }
    //check "select all" if all checkbox items are checked
    if ($('.checkbox:checked').length === $('.checkbox').length) {
        $("#select_all").prop('checked', true);
    }
});
