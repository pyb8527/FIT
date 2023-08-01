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
<meta charset="UTF-8">

<style>
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
	text-align: right;
	margin: 0;
}

.font-div {
	text-align: center;
	margin-top: -10%;
}

.inner-div:hover .inner-hover {
	background: rgba(255, 255, 255, 0.8);
	transition: background 1s ease-out 50ms;
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
				<li data-menuanchor="section1"><a href="#section1" class="btn6">Gyeongbokgung</a></li>
				<li data-menuanchor="section2"><a href="#section2" class="btn6">Changdeokgung</a></li>
				<li data-menuanchor="section3"><a href="#section3" class="btn6">Deoksugung</a></li>
				<li data-menuanchor="section4"><a href="#section4" class="btn6">Changgyeonggung</a></li>
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
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/gwang.jpg) no-repeat right/cover;">
					<!-- <div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">광화문</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">
									<ul>
										<li>경복궁 남쪽에 있는 정문, '임금의 큰 덕이 온 나라를 비춘다'라는 의미이다.<br>
											<br> 주소 : 대한민국 서울특별시 종로구 사직로 161<br> <br> 완공 :
											1395년<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1864년(복원)<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2010년(복원)<br>
											<br> 파괴 : 1592년(임진왜란)<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1950년(한국전쟁)<br>
											<br> 철거 : 1927년(이전)<br> <br> 용도 : 경복궁 정문<br>
											<br> <a
											href="https://search.naver.com/search.naver?where=influencer&sm=tab_jum&query=%EA%B4%91%ED%99%94%EB%AC%B8">
												블로그 찾아보기 ></a></li>
									</ul>
								</span><br>
							</div>
						</div>
					</div> -->
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">광화문</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">
									<ul>
										<li>경복궁 남쪽에 있는 정문, '임금의 큰 덕이 온 나라를 비춘다'라는 의미이다.<br>
											<br> 주소 : 대한민국 서울특별시 종로구 사직로 161<br> <br> 완공 :
											1395년<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1864년(복원)<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2010년(복원)<br>
											<br> 파괴 : 1592년(임진왜란)<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1950년(한국전쟁)<br>
											<br> 철거 : 1927년(이전)<br> <br> 용도 : 경복궁 정문<br>
											<br> <a 
											href="https://search.naver.com/search.naver?where=influencer&sm=tab_jum&query=%EA%B4%91%ED%99%94%EB%AC%B8">
												블로그 찾아보기 ></a></li>
									</ul>
								</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/gwanghwapark.png) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">광화문 광장</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">
									<ul>
										<li>대한민국 서울특별시 종로구에 위치한 광장.<br> <br> 주소 : 대한민국
											서울특별시 종로구 세종대로 172<br> <br> 조성시기 : 2009년 8월 1일<br>
											<br> 면적 : 1만8840㎡<br> <br> 동상 : 세종대왕동상, 이순신장군
											동상<br> <br> 2002년에 이명박 서울시장이 광화문, 서울특별시청, 숭례문 앞에
											광장을 만들겠다는<br> 구상을 한 적이 있었으며, 오세훈 서울시장 재임 당시 세종대로 양측 배치,
											중앙 배치, 편측 배치 등 세 가지 안 가운데 중앙 배치안이 채택되었다.<br> <br> <a
											href="https://search.naver.com/search.naver?sm=tab_hty.top&where=influencer&query=%EA%B4%91%ED%99%94%EB%AC%B8%EA%B4%91%EC%9E%A5&oquery=%EA%B4%91%ED%99%94%EB%AC%B8&tqi=hUihElprvxZssbghH34ssssst%2FK-270154">
												블로그 찾아보기 ></a>
									</ul>
								</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/oldgwanghwa.png) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">광화문 역사</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">
									<ul>
										<li>조선시대 :<br> 1395년 조선 태조 때 창건되어 정도전에 의해 '사정'으로
											명명되었다. 당시 '오문'이라 불리기도 했다.<br> 1425년 조선 세종 떄에 들어 집현전의
											학사들이 지금의 '광화문'으로 이름을 바꾸었다<br> 임진왜란 당시에는 경복궁과 함께 방화로
											소실되었으나, 조선 후기에 흥선대원군이 경복궁을 다시 중건하면서 재건되었다.<br> <br>
											일제강점기와 한국전쟁 :<br> 1910년 한일 병합 이후 조선총독부가 경복궁 일대에 조선총독부
											청사를 조성하는<br> 과정에서, 그 위치상 청사 앞을 가린다는 이유를 들어 광화문을 철거하겠다는
											계획을<br> 발표했다. 그러나 조선은 물론 일본의 지식인들까지 철거 결정에 반발하였다.<br>
											이에 조선총독부는 광화문 철거 계획을 철회하고 총독부 청사가 완공된 이듬해인<br> 1927년
											광화문을 건춘문 (경복궁의 동문) 쪽으로 이전 설치하였다.<br> 광화문은 1945년 해방 이후에도
											이 자리에 그대로 남아 있었다.
										</li>
									</ul>
								</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="section">
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/Gpalace.png) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">근정전</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">
									<ul>
										<li>근정전은 조선의 법궁인 경복궁의 정전으로, 다포계 팔작 지붕의 중층 건물이다.<br>
											현재 근정전은 국보 223호로 지정되어 있는 현존하는 한국 최대의 목조 건축물 중<br> 하나이다.<br>
											<br> 종목 : 국보 제 223호(1975년 1월 8일 지정)<br> <br>
											수량 : 1동<br> <br> 시대 : 조선 고종 4년(1867년)<br> <br>
											주소 : 서울특별시 종로구 삼철로 37, 경복궁(세종로)(경복궁 내)<br> <br>

										</li>
									</ul>
								</span><br>
							</div>
						</div>
					</div>
				</div>
				<div class="slide">
					<div class="outer-div"
						style="background: url(${root }/img/G_inside.png) no-repeat right/cover;">
						<div class="inner-div">
							<div class="inner-hover">
								<div class="font-div">
									<span class="name-span">근정전 내부</span><br>
								</div>
								<div class="info-div">
									<span class="inner-span">
										<ul>
											<li>일월오봉병(日月五峰屛)으로 둘러쳐진 왕이 앉는 의자인 어좌(御座)가 <br>높은 대
												위에 있고 통간으로 높은 천장을 형성하였다. <br> 천장 중앙에는 7개의 발톱을 갖고 있는 용
												2마리를 나무로 조각해 매달았다.<br> <br> <img
												src="${root }/img/Gtop.jpg" width="600px">

											</li>
										</ul>
									</span><br>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slide">
					<div class="outer-div"
						style="background: url(${root }/img/oldG.png) no-repeat right/cover;">
						<div class="inner-div">
							<div class="inner-hover">
								<div class="font-div">
									<span class="name-span">근정전 역사</span><br>
								</div>
								<div class="info-div">
									<span class="inner-span">요약 설명</span><br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="section">
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/kyung.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">경회루</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/kyung.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">경회루</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/kyung.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">경회루</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="section">
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/hwang.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">향원정</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/hwang.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">향원정</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="slide">
				<div class="outer-div"
					style="background: url(${root }/img/hwang.jpg) no-repeat right/cover;">
					<div class="inner-div">
						<div class="inner-hover">
							<div class="font-div">
								<span class="name-span">향원정</span><br>
							</div>
							<div class="info-div">
								<span class="inner-span">요약 설명</span><br>
							</div>
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