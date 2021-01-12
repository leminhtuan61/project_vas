$("#formLogin").validate({
    rules: {
        username: {
            required: true,
            minlength: 3,
            maxlength: 50
        },
        password: {
            required: true,
            minlength: 3,
            maxlength: 30 
        },
    },
    messages: {
        username: {
            required: "Username must be not empty!",
            minlength: "Your Email Login must be at least 3 characters long",
            maxlength: "Your Email Login must be less than 50 characters long"
        },
        password: {
            required: "Password must be not empty!",
            minlength: "Your Password must be at least 3 characters long",
            maxlength: "Your Password must be less than 30 characters long"
        },
    },
    submitHandler: function (form) {
        form.submit();
    }
});
$(function() {
  $(".errorLogin").fadeOut(5000);
});
