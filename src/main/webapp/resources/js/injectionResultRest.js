$(document).ready(function () {

    $("#btnSave").click(function () {
        // var user = new Object();

        var customer = $("#customer").val();

        var form = $('#injectionAddForm')[0];
        var data = new FormData();
        data.append("user", JSON.stringify(user));
        data.append("file", file);


        $.post({
            url: "/api/v1/user/save",
            enctype: 'multipart/form-data',
            data: data,
            processData: false, //prevent jQuery from automatically transforming the data into a query string
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (response) {

            },
            error: function () {

            }
        })
    });
})