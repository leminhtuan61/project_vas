$().ready(function () {
    $("#injectionAddForm").validate({
        errorClass: "error",
        rules: {
            numberOfInjection: {
                required: true,
                number: true,
                min: 1
            },
            customer: {
                required: true
            },
            prevention: {
                required: true
            },
            vaccine: {
                required: true
            },
            injectionDate: {
                required: true,
                date: true
            },
            nextInjectionDate: {
                required: true,
                date: true
            },
            injectionPlace: {
                required: true

            }

        },
        messages: {
            numberOfInjection: {
                required: "Please enter number of Injection!",
                number: "Number of injection can only have numbers!",
                min: "Please enter a value greater than or equal to 1"
            },
            customer: {
                required: "Please select the customer!"
            },
            prevention: {
                required: "Please select the prevention!"
            },
            vaccine: {
                required: "Please select the vaccine!"
            },
            injectionDate: {
                required: "Please enter the date of injection!"
            },
            nextInjectionDate: {
                required: "Please enter the next injection date!"
            },
            injectionPlace: {
                required: "Please select the place of injection!"
            }
        },
        errorPlacement: function (error, element) {
            console.log(error);
            if (element.attr("name") === "numberOfInjection") {
                $("#injectionError").append(error);
            } else if (element.attr("name") === "customer") {
                $("#customerError").append(error);
            } else if (element.attr("name") === "prevention") {
                $("#preventionError").append(error);
            } else if (element.attr("name") === "vaccine") {
                $("#vaccineError").append(error);
            } else if (element.attr("name") === "injectionDate") {
                $("#dateInjectionError").append(error);
            } else if (element.attr("name") === "nextInjectionDate") {
                $("#nextDateError").append(error);
            } else if (element.attr("name") === "injectionPlace") {
                $("#placeError").append(error);
            }
        }
    });

    $("#injectionUpdateForm").validate({
        errorClass: "error",
        rules: {
            numberOfInjection: {
                required: true,
                number: true,
                min: 1
            },
            customer: {
                required: true
            },
            prevention: {
                required: true
            },
            vaccine: {
                required: true
            },
            injectionDate: {
                required: true,
                date: true
            },
            nextInjectionDate: {
                required: true,
                date: true
            },
            injectionPlace: {
                required: true

            }

        },
        messages: {
            numberOfInjection: {
                required: "Please enter number of Injection!",
                number: "Number of injection can only have numbers!",
                min: "Please enter a value greater than or equal to 1"
            },
            customer: {
                required: "Please select the customer!"
            },
            prevention: {
                required: "Please select the prevention!"
            },
            vaccine: {
                required: "Please select the vaccine!"
            },
            injectionDate: {
                required: "Please enter the date of injection!"
            },
            nextInjectionDate: {
                required: "Please enter the next injection date!"
            },
            injectionPlace: {
                required: "Please select the place of injection!"
            }
        },
        errorPlacement: function (error, element) {
            console.log(error);
            if (element.attr("name") === "numberOfInjection") {
                $("#injectionError").append(error);
            } else if (element.attr("name") === "customer") {
                $("#customerError").append(error);
            } else if (element.attr("name") === "prevention") {
                $("#preventionError").append(error);
            } else if (element.attr("name") === "vaccine") {
                $("#vaccineError").append(error);
            } else if (element.attr("name") === "injectionDate") {
                $("#dateInjectionError").append(error);
            } else if (element.attr("name") === "nextInjectionDate") {
                $("#nextDateError").append(error);
            } else if (element.attr("name") === "injectionPlace") {
                $("#placeError").append(error);
            }
        }
    });
});