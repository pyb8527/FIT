<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var='root' value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FIT</title>
<link href="${root }/css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<link href="${root }/css/main.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script src="${root }/js/jquery.fullPage.js"></script>
<script src="${root }/js/main.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>

<header>
		<nav>
			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label>
						<ul class="ul_logo">
				<li class="li_logo"><a href="${root }/main" class="btn6">FIT</a></li>
			</ul>
			<ul>
				<%-- <li>
				<form action="" method="POST">
				<input type="text" class="text" name="" onfocus="_Focus();"
					onblur="_blur();" id="_focus" value="Le Go Trip ! ">
				<!--  <a href="ex" class="ex"><img src="img/search.png" class="searchImg"></a> -->
			</form></li> --%>
				<li data-menuanchor="section1"><a href="#section1" class="btn6">Lotte Tower</a></li>
				<li data-menuanchor="section2"><a href="#section2" class="btn6">63Building</a></li>
				<li data-menuanchor="section3"><a href="#section3" class="btn6">N Seoul Tower</a></li>
				<li class="space"></li>
				<li><a href="${root }/board/main?board_info_idx=1" class="btn6">COMMUNITY</a></li>
				<li><a href="${root }/user/logout" class="btn6">SIGNOUT</a></li>

				<%--   <form:form action="result">
                    ID :
                    <form:input path="ID" class="ID" />
                </form:form>
 --%>
				<%-- <form>
                    PW :
                    <input type="text" name="PW" class="PW" />
                </form> --%>
				<!-- <div class="logoNsearch"> -->
				<!-- <div class="logo">
                    <a href="index" class="logo"><img src="img/legoLogo.png" width="100px" height="150px"></a>
                </div> -->

				<!-- </div> -->

			</ul>
		</nav>
	</header>
	<main id="fullpage">
		<section class="section">
			<div class="outer-div">
				<div class="inner-div"
				style="background: url(${root}/img/t1.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">AQUARIUM</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">아쿠아리움</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="towersub#section1">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(${root}/img/t2.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">SEOUL SKY</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">서울 스카이</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div"
					style="background: url(${root}/img/t3.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">SIGNIEL SEOUL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">시그니엘 서울</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(${root}/img/t4.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">AVENUEL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">에비뉴엘</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section">
			<div class="outer-div"
			style="background: url(${root}/img/63.png) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">SEOULㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section">
			<div class="outer-div"
			 style="background: url(https://www.agoda.com/wp-content/uploads/2019/03/N-Seoul-Tower-Namsan-Cable-Car.jpg) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">SEOULㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">제목ㅣ 카테고리</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">요약 설명</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">보러가기></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>
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