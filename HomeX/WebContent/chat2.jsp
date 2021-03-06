<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="cookie.Manage, bean.House, java.net.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Chat</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/message.css" rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>

<%
	Cookie cRole = Manage.getCookie(request, "Role");
	String Role = null;

	if (null == cRole) {
		Manage.setCookie(request, response, "Role", "visitor");
		Role = "visitor";
	} else
		Role = cRole.getValue();
	if (Role.equals("visitor")) {
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
	<div class="page-wrapper bg-color-1">
		<div class="container">


			<header>
				<h1 class=" text-center">Messaging</h1>
			</header>
			<div class="messaging">
				<div class="inbox_msg">
					<div class="inbox_people">
						<div class="headind_srch">
							<div class="recent_heading">
								<h4>Recent</h4>
							</div>
							<div class="srch_bar">
								<div class="stylish-input-group">
									<input type="text" class="search-bar" placeholder="Search">
									<span class="input-group-addon">
										<button type="button">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</span>
								</div>
							</div>
						</div>
						<div class="inbox_chat">
							<div class="chat_list active_chat">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
							<div class="chat_list">
								<div class="chat_people">
									<div class="chat_img">
										<img src="https://ptetutorials.com/images/user-profile.png"
											alt="sunil">
									</div>
									<div class="chat_ib">
										<h5>
											Sunil Rajput <span class="chat_date">Dec 25</span>
										</h5>
										<p>Test, which is a new approach to have all solutions
											astrology under one roof.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mesgs">
						<div class="msg_history">
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>Test which is a new approach to have all solutions</p>
										<span class="time_date"> 11:01 AM | June 9</span>
									</div>
								</div>
							</div>
							<div class="outgoing_msg">
								<div class="sent_msg">
									<p>Test which is a new approach to have all solutions</p>
									<span class="time_date"> 11:01 AM | June 9</span>
								</div>
							</div>
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>Test, which is a new approach to have</p>
										<span class="time_date"> 11:01 AM | Yesterday</span>
									</div>
								</div>
							</div>
							<div class="outgoing_msg">
								<div class="sent_msg">
									<p>Apollo University, Delhi, India Test</p>
									<span class="time_date"> 11:01 AM | Today</span>
								</div>
							</div>
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>We work directly with our designers and suppliers, and
											sell direct to you, which means quality, exclusive products,
											at a price anyone can afford.</p>
										<span class="time_date"> 11:01 AM | Today</span>
									</div>
								</div>
							</div>
						</div>
						<div class="type_msg">
							<div class="input_msg_write">
								<input type="text" class="write_msg"
									placeholder="Type a message" />
								<button class="msg_send_btn" type="button">
									<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
