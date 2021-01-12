$(document).ready(function() {
	$('#resetButton').click(function() {
		CKEDITOR.instances.txtEditor.setData( '', function() { this.updateElement(); 
		$('#inputPreview').val(''),
        $('#inputTitle').val(''),
        $('.custom-select').val('')} ) 
	});

	$("#createForm").validate({
		errorClass: "error",
		ignore: [],
		rules: {
			title: {
				required: true,
				maxlength: 300
			},
			preview: {
				required: true,
				maxlength: 1000
			},
			newsType:{
				required: true
			},
		},
		messages: {
			title: {
				required: "You must enter a title",
				maxlength: "Title should have less than 300 characters!"
			},
			preview: {
				required: "You must enter a preview",
				maxlength: "Preview should have less than 1000 characters!"
			},
			newsType:{
				required: "Please choose a type!"
			},
		},
		errorPlacement: function(error, element) {
			if (element.attr("name") == "title") {
				$("#titleErr").append(error);
			}
			else if (element.attr("name") == "preview") {
				$("#previewErr").append(error);
			}
			else if (element.attr("name") == "newsType") {
				$("#newsTypeErr").append(error);
			}
		},
	})
	$('#saveNews').click(function() {
		var messageLength = CKEDITOR.instances['txtEditor'].getData().replace(/<[^>]*>/gi, '').length;
            if( !messageLength ) {
                $("#contentErr").append('Please write something for your news!');
                e.preventDefault();
            } else if(messageLength > 4000){
            	$("#contentErr").append('You should write your news within 4000 characters!');
                e.preventDefault();
            }
	})
})
