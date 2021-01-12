<img src="data:image/png;base64,${captchaEncode}" />


<button type="button" id="btnCaptcha"
	contextPath="${pageContext.request.contextPath}">
	<i class="fas fa-sync"></i>
</button>
<script>
	$(document).ready(function() {

		$("#btnCaptcha").click(function() {
			var contextPath = $(this).attr("contextPath");

			$.get({
				url : contextPath + "/refreshCaptcha",

				success : function(response) {
					$("#content-captcha").html(response);

				},

			});
		})
	});
</script>