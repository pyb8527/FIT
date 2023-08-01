<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FIT</title>
<link href="${root }/css/jquery.fullPage.css" rel="stylesheet"
	type="text/css">
<link href="${root }/css/main.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script src="${root }/js/jquery.fullPage.js"></script>
<script src="${root }/js/main.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<c:import url="/WEB-INF/views/include/Bootstrap4.jsp" />
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:500,900);

figure.snip1432 {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 100%;
	background-color:whitesmoke;
	color: #000000;
}

figure.snip1432 * {
	-webkit-transition: all 0.6s ease;
	transition: all 0.6s ease;
}

figure.snip1432 figcaption {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

figure.snip1432 figcaption>div {
	height: 100%;
	overflow: hidden;
	width: 100%;
	position: relative;
}

figure.snip1432 h3 {
	margin: 0;
	position: absolute;
	left: 0;
	text-transform: uppercase;
}

figure.snip1432 h3 {
	font-size: 1em;
	bottom: 0;
	font-weight: 50px;
	font-size: 100px;
	height: 100%;
}

figure.snip1432 h3:nth-of-type(2) {
	opacity: 0;
	-webkit-transform: translateY(150%);
	transform: translateY(150%);
}

figure.snip1432 a {
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	position: absolute;
}

figure.snip1432:hover figcaption h3:first-of-type, figure.snip1432.hover figcaption h3:first-of-type
	{
	-webkit-transform: translateY(150%);
	transform: translateY(150%);
	opacity: 0;
}

figure.snip1432:hover figcaption h3:nth-of-type(2), figure.snip1432.hover figcaption h3:nth-of-type(2)
	{
	opacity: 1;
	-webkit-transform: translateY(0%);
	transform: translateY(0%);
}

.fit {
	margin-top: 200px;
	margin-left: -60%;
	float: left;
	width: 100%;
	height: 25%;
}

.fit a {
	font-size: 100px ! important;
	font-weight: bold;
	color: black;
}

.big {
	opacity: 0;
}

.big:hover {
	background-color: white;
	transition: .5s ease;
}

.fit:hover .small {
	background-color: white;
	opacity: 0;
	transition: .5s ease;
}

.fit:hover .big {
	opacity: 1;
}

.inner5 {
	margin-top: 50px;

	float: right;
	width: 50%;
	opacity: 1;
}

.inner5 .card {
	width: 150%;
	height: 90%;
	float: center;
}
.li_logo{color:black;}
body{
	background-color:whitesmoke
}
header{
	background-color:whitesmoke
}
</style>
</head>
<body>
	<header>
		<nav>
			<input type="checkbox" id="check" /> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label>			
		</nav>
	</header>
	<%-- <c:import url="/WEB-INF/views/include/TopMenu.jsp" /> --%>
	<!-- <div class="container" style="margin-top:100px">-->
	<div class="container" style="margin-top: 100px">

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-8">

				<div class="fit">
					<figure class="snip1432">
						<figcaption>
							<div>
								<h3>&nbsp&nbsp&nbsp&nbsp&nbspTHE&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
								<h3>Portfolio</h3>								
							</div>
						</figcaption>
					</figure>
				</div>

				<div class="inner5">
					<div class="card shadow">
						<div class="card-body">
							<div class="alert alert-dark">
								<h3>Sign In</h3>
								<p>Sign-in with Username</p>
							</div>
							<form:form action='${root }user/login_pro' method='post'
								modelAttribute="tempLoginUserBean">
								<div class="form-group">
									<form:label path="user_id">Username</form:label>
									<form:input path="user_id" type='text' name='user_id'
										class='form-control' />
									<form:errors path='user_id' style='color:red' />
								</div>
								<div class="form-group">
									<form:label path="user_pw">Password</form:label>
									<form:input path="user_pw" type='password' name='user_pw'
										class='form-control' />
									<form:errors path='user_pw' style='color:red' />
								</div><br><br><br><br><br><br>
								<div class="form-group text-right">
									<form:button class='btn btn-primary'>Sign In</form:button>
									<a href="${root }user/join" class="btn btn-info">Sign Up</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />
</body>
</html>