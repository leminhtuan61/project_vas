<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta charset="utf-8">
<body>
	<div class="modal-dialog m-0" role="document" style="max-width: 1200px">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #009688">
				<br />
				<h5 class="modal-title text-light" id="modalTitle">News Details</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div>
					<div class="form-group border rounded p-2">
						<h2>${news.title}</h2>
						<hr />
						<h4 class="font-italic">${news.preview}</h4>
						<br /> ${news.content}
					</div>
					<div class="form-group">
						<label for="news-title" class="col-form-label">News Type</label> <label
							class="form-control" id="news-title">${news.newsType.newsTypeName}</label>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		crossorigin="anonymous"></script>

</body>
