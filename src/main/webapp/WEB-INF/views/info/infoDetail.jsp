<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var='root' value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<script type="text/javascript">
</script>
	<style>
	.sub{
		background-color:rgb(255, 255, 255, 0)
	}
	.inner-div {
	margin: 0;
	display: inline-block;
	width: 50%;
	height: 51vw;
}
	.outer-div {
	font-size: 0;
	width: 100%;
	height: auto;
	background: #212121;
	text-align: left;
	margin: 0;
}
	</style>
</head>
<body>

	<header>
		<nav>
			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label>
			
			<ul class="ul_logo">
				<li class="li_logo"><a href="${root }/main" class="btn6">THE</a></li>
			</ul>
			<ul>
				<li data-menuanchor="section1"><a href="#section1" class="btn6">Top</a></li>
				<li data-menuanchor="section4"><a href="#section4" class="btn6">Bottom</a></li>
				<li class="space"></li>
				<li><a href="${root }/board/main?board_info_idx=1" class="btn6">COMMUNITY</a></li>
				<li><a href="${root }/user/logout" class="btn6">SIGNOUT</a></li>
			</ul>
		</nav>
		
	</header>		
	<main id="fullpage">
		<section class="section">
		<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="0" end="1">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
			</div>
			<c:if test="${contentSize > 2 }">
			<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="2" end="3">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
			</div>
			</c:if>
			</section>			
			<c:if test="${contentSize > 4 }">
			<section class="section">
			<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="4" end="5">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_writer_name }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.user_age }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_contest }</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
			</div>
			<c:if test="${contentSize > 6 }">
			<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="6" end="7">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_writer_name }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.user_age }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_contest }</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
			</div>	
			</c:if>			
		</section>
		</c:if>
		<c:if test="${contentSize > 8 }">
		<section class="section">
		<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="8" end="9">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>	
				</c:forEach>
				</div>	
				</div>
				<c:if test="${contentSize > 10 }">
				<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="10" end="11">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>	
				</c:forEach>
				</div>	
				</div>	
				</c:if>	
				</section>
				</c:if>
				
				<c:if test="${contentSize > 12 }">
				<section class="section">
				<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="12" end="13">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>	
				</c:forEach>
				</div>
				</div>
				<c:if test="${contentSize > 14 }">
				<div class="slide">
			<div class="outer-div">
			<c:forEach var="obj" items="${contentList }" begin="14" end="15">
				<div class="inner-div"
					style="background: url(${root}/upload/${obj.content_file }) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${obj.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${obj.content_text }</span><br>
						</div>						
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/board/myslide?board_info_idx=${info_idx }&content_idx=${obj.content_idx }#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>	
				</c:forEach>
				</div>
				</div>
				</c:if>
		</section>
		</c:if>	
		<footer class="section fp-auto-height">
						<div class="footer"
				style="padding-top: 30px; padding-bottom: 30px;">
				<div class="container" style="margin-left:10%">
					<p>http://www.hit.co.kr</p>
					<p>Fall Into Trip</p>
					<p>대전보건대학교 의료IT융합(학)과</p>
				</div>
			</div>
		</footer>
	</main>
</body>
</html>