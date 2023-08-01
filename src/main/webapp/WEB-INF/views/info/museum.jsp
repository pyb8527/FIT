<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
.sub {
	background-color: rgb(255, 255, 255, 0)
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
				<li class="li_logo"><a href="${root }/main" class="btn6">FIT</a></li>
			</ul>
			<ul>
				<%-- <li>
				<form action="" method="POST">
				<input type="text" class="text" name="" onfocus="_Focus();"
					onblur="_blur();" id="_focus" value="Le Go Trip ! ">
				<!--  <a href="ex" class="ex"><img src="img/search.png" class="searchImg"></a> -->
			</form></li> --%>
				<li data-menuanchor="section1"><a href="#section1" class="btn6">National
						Museum</a></li>
				<li data-menuanchor="section2"><a href="#section2" class="btn6">war memorial</a></li>
				<li data-menuanchor="section3"><a href="#section3" class="btn6">Seodaemun
						Prison</a></li>
				<li data-menuanchor="section4"><a href="#section4" class="btn6">Seoul
						Museum of Art</a></li>
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
			<div class="outer-div"
				style="background: url(${root}/img/nmok.jpg) no-repeat left/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Mirror Pond</span>
						</div>
						<div class="font-div">
							<span class="inner-span">거울못과 청자정</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/info/palacesub#section1">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Stone Pagoda Garden</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">석탑정원</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/info/palacesub#section2">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Yongsan Family Park</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">용산가족공원</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/info/palacesub#section3">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Bosingak Species</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">보신각종</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a
								href="${root }/info/palacesub#section4">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section">
			<div class="outer-div"
				style="background: url(${root}/img/wm.jpg) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Fighter plane</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">항공기</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Land equipment</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">육상장비</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Frostbite</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">동상</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Exhibition</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">전시물</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section">
			<div class="outer-div"
				style="background: url(${root}/img/seodaemun.jpg) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Exhibition Hall</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">전시관</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Oxa Exhibition</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">옥사전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Outdoor Exhibition</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">야외전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span" style=" line-height:1;">Independence Activist<br>&nbspof the Month</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">이달의 독립운동가</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section">
			<div class="outer-div"
				style="background: url(${root}/img/sema.jpg) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Current Exhibitionss</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">현재 전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="https://sema.seoul.go.kr/ex/currEx">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Past Exhibitions</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">지난 전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="https://sema.seoul.go.kr/ex/preEx">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Upcoming Exhibitions</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">예정 전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="https://sema.seoul.go.kr/ex/soonEx">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">Annual Exhibitions</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">연간 전시</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="https://sema.seoul.go.kr/ex/yearlyEx">GO TO SEE ></a></span><br>
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