<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container">
	<h2>Dropdowns</h2>
	<p>The .dropdown class is used to indicate a dropdown menu.</p>
	<p>Use the .dropdown-menu class to actually build the dropdown
		menu.</p>
	<p>To open the dropdown menu, use a button or a link with a class
		of .dropdown-toggle and data-toggle="dropdown".</p>
	<div class="dropdown">
		<button class="btn btn-primary dropdown-toggle" type="button"
			data-toggle="dropdown">
			Dropdown Example <span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">HTML</a></li>
			<li><a href="#">CSS</a></li>
			<li><a href="#">JavaScript</a></li>
		</ul>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>