<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="cookie.Manage, java.net.*"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8">
<title>Admin</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Gloria+Hallelujah'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'
	rel='stylesheet' type='text/css'>


<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="css/content.css">
<script src="js/modernizr.js"></script>
<!-- Modernizr -->

<script src="//code.jquery.com/jquery-1.10.2.js"></script>

<%
	Cookie cRole = Manage.getCookie(request, "Role");
	String Role = null;

	if (null == cRole) {
		Manage.setCookie(request, response, "Role", "visitor");
		Role = "visitor";
		response.sendRedirect("index.jsp");
		return;
	} else
		Role = cRole.getValue();
	if (Role.equals("visitor") || Role.equals("user")) {
		response.sendRedirect("index.jsp");
		return;
	}
%>

<script>
	$(function() {
		var Role = "<%=Role%>"
		if (Role == "visitor")
			$("#header").load("navbar.jsp");
		else
			$("#header").load("navbar.after.jsp");
	});
</script>

</head>
<div id="header"></div>

<body>
	<header>
		<h1>Hello Admin</h1>
	</header>

	<!-- every li tag represent a picture with its quick view button-->
	<ul class="cd-items cd-container">
		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>

		<li class="cd-item"><img src="img/item-1.jpg" alt="Item Preview">
			<a href="#0" class="cd-trigger">Quick View</a></li>
	</ul>

	<!-- inside this div is the pop up window to view the house with its details and buttons-->
	<div class="cd-quick-view">
		<div class="cd-slider-wrapper">
			<ul class="cd-slider">
				<li class="selected"><img src="img/item-1.jpg" alt="Product 1"></li>
				<li><img src="img/item-2.jpg" alt="Product 2"></li>
				<li><img src="img/item-3.jpg" alt="Product 3"></li>
			</ul>
			<!-- cd-slider -->

			<div id="wrapper">
				<ul class="cd-slider-navigation">
					<li><a class="cd-next" href="#0">Prev</a></li>
					<li><a class="cd-prev" href="#0">Next</a></li>
				</ul>
			</div>
		</div>

		<div class="cd-item-info">
			<h2>Property Title</h2>
			<p>Description</p>

			<ul class="cd-item-action">
				<li><button class="accept">Accept</button></li>
				<li><button class="register">Reject</button></li>
			</ul>

		</div>
		<a href="#0" class="cd-close">Close</a>
	</div>
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/velocity.min.js"></script>
	<script src="js/content.js"></script>
</body>
</html>
