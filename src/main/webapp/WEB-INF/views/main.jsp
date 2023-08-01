<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FIT</title>
<link href="css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script
  src="https://code.jquery.com/jquery-3.6.1.js"
  integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
  crossorigin="anonymous"></script>
<script src="js/jquery.fullPage.js"></script>
<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/2f38b7379b.js" crossorigin="anonymous"></script>
<style>
.footer{
	background-color:rgb(40, 44, 52);
	color:white;
	font-size:15px;
}
</style>
</head>

<body>
	<%@ include file="include/TopMenu.jsp" %>
	<main id="fullpage">
		<!-- ART -->
		<section class="section">
			<div class="outer-div">
				<div class="inner-div"
					style="background: url(img/ORIENTAL5.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">ORIENTAL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">동양화</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=1">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/WESTERN4.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">WESTERN</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">서양화</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=2">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div"
					style="background: url(img/POPART2.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">POP-ART</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">팝-아트</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=3">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/ILLUSTRATE2.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">ILLUSTRATE</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">일러스트</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=4">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ARCHITECTURE -->
		<section class="section">
			<div class="outer-div">
				<div class="inner-div"
					style="background: url(img/interior.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">INTERIOR</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">실내 건축</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=5">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/outdoor.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">OUTDOOR</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">실외 건축</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=6">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
				<div class="inner-div"
					style="background: url(img/palace.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">ORIENTAL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">동양 건축</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/west.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">WESTERN</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">서양 건축</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="#">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- IT -->
		<section class="section">
			<div class="outer-div">
				<div class="inner-div"
					style="background: url(img/webDev.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">WEB DEV.</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">웹 개발</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=9">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/appDev.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">APP DEV.</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">앱 개발</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=10">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
				<div class="inner-div"
					style="background: url(img/aiDev.png) no-repeat left/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">AI DEV.</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">AI 개발</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=11">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/iotDev.png) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">IoT DEV.</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">IoT 개발</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=12">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- DESIGN -->
		<section class="section">
			<div class="outer-div">
			
			<div class="inner-div"
					style="background: url(img/indust.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">INDUSTRIAL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">산업 디자인</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=13">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
				
			<div class="inner-div"
					style="background: url(img/visual.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">VISUAL</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">시각 디자인</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=14">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>
				<div class="inner-div"
				style="background: url(img/fashion.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">FASHION</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">패션 디자인</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=15">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/craft.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">CRAFTS</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">공예</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=16">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- SPORTS -->
		<section class="section">
			<div class="outer-div">
				<div class="inner-div"
				style="background: url(img/athetic.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">ATHLETIC</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">육상 스포츠</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=17">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/water.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">WATER</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">수중 스포츠</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=18">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>


				<div class="inner-div"
					style="background: url(img/team.jpg) no-repeat right/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">TEAM</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">팀 스포츠</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=19">GO TO SEE ></a></span><br>
						</div>
					</div>
				</div>

				<div class="inner-div"
					style="background: url(img/martial.jpg) no-repeat center/cover;">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">MARTIAL ART</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">무도</span><br>
						</div>
						<div class="click-div">
							<span class="inner-span-view"><a href="info/infoDetail?info_idx=20">GO TO SEE ></a></span><br>
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