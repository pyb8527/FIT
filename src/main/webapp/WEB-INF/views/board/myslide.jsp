<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
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

.name-span{
	line-height:4;
}
.inner-span{
	line-height:6;
}
.inner-div {
	margin: 0;
	display: inline-block;
	width: 50%;
	height: 48vw;
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
#div-out > div{
	float: left;
    width: 50%;
    height: 850px;
    font-size: 20px;
    line-height: 100px;
    text-align: center;
    margin-top:100px;
}
.div-title{
	height:50px; text-align:left; margin-left:100px;
}
.div-title > input{
	 font-size:30px; width:auto; text-align:center;
}
#div-out::after{
	content: "";
    display: block;
    clear: both;
}
.div-content-25{
	float: left;
    width: 50%;
    height: 40%;
    text-align: center;
    padding-left:50px;
    transition: all 0.3s cubic-bezier(0.42, 0.0, 0.58, 1.0);
}
.div-content-25:hover {
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
  transform: translateY(-10px);
}
.div-content-25 > input{
	width:300px; height:50px; margin-top:-100px; text-align:center;
}
.div-content-25 > h3, h2{
	text-align:left;
}
.content-25-img > img{
	margin-top:15px; width:250px; height:300px; border-radius:50%; border: solid 1px navy;
}
.div-content-25 > ul{text-align:left;}
.input_underLine{
	outline:none; border-top-width:0; border-right-width:0; border-left-width:0; border-bottom-width:0;
	font-size: 20px; border-color:navy;
}
h3, h2{color:navy;}
p {
   line-height:1; text-align:left;font-size:25px;
}
li{line-height:1.5; font-size:15px;}
#box {
  width: 100%;
  height: 40%;
  border-radius: 8px;
  overflow: hidden;
  margin: 50px auto;
  transition: all 0.3s cubic-bezier(0.42, 0.0, 0.58, 1.0);
}
#box:hover {
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
  transform: translateY(-10px);
}
#box > div{
	float: left;
    width: 50%;
    height: 40%;
    text-align: center;
    padding-left:50px;
    }
    #div-out{padding-left:15%; width:90%;}
.content-25-img > p{
	line-height:3; font-size:20px;
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
				<li data-menuanchor="section1"><a href="#section1" class="btn6">Profile</a></li>
				<li data-menuanchor="section2"><a href="#section2" class="btn6">1st</a></li>
				<li data-menuanchor="section3"><a href="#section3" class="btn6">2nd</a></li>
				<li data-menuanchor="section4"><a href="#section4" class="btn6">3rd</a></li>
				<li data-menuanchor="section4"><a href="#section5" class="btn6">4th</a></li>
				<li class="space"></li>
				<c:if test="${loginUserBean.user_idx eq readContentBean.content_writer_idx }">
				<li><a href="${root }/board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="btn6">MODIFY</a></li>
				</c:if>
				<li><a href="${root }/board/main?board_info_idx=1" class="btn6">COMMUNITY</a></li>
				<li><a href="${root }/user/logout" class="btn6">SIGNOUT</a></li>
			</ul>
		</nav>
		
	</header>		
	<main id="fullpage">
	<section class="section">
			<div id="div-out">			
				<div class="div-content">
					<div class="div-title">
					<input type="text" class="input_underLine" value="<c:out value="${readContentBean.content_kategori_nm }"/>"/>					
					</div>
					<div id="box">
					<div>
						<div class="content-25-img">
						<img src="${root}upload/${readContentBean.user_face}"/>
						</div>
					</div>											
					<div>
						<div class="content-25-img">
							<p><c:out value="${readContentBean.content_contest }"/></p>
						</div>
					</div>		
					</div>
					<div class="div-content-25">
						<h2>about me</h2>
						<p><bold><c:out value="${readContentBean.user_name }"/></bold><br/>
						<c:out value="${readContentBean.user_age }"/><br/>
						<c:out value="${readContentBean.user_phone }"/><br/>
						<c:out value="${readContentBean.user_email }"/></p>
					</div>	
					<div class="div-content-25">
						<h2>LICENSE</h2>
						<ul>
							<li><c:out value="${readContentBean.license_name } ${readContentBean.license_date } ${readContentBean.license_organ }" /></li>
							<li><c:out value="${readContentBean.license_name2 } ${readContentBean.license_date2 } ${readContentBean.license_organ2 }" /></li>
							<li><c:out value="${readContentBean.license_name3 } ${readContentBean.license_date3 } ${readContentBean.license_organ3 }" /></li>
							<li><c:out value="${readContentBean.license_name4 } ${readContentBean.license_date4 } ${readContentBean.license_organ4 }" /></li>
						</ul>						
					</div>
					</div>
					<div class="div-content">
					<div class="div-title">
					<input type="text" class="input_underLine"/>					
					</div>
					<div class="div-content-25">
						<h2>EDUCATION</h2>
						<ul>
							<c:if test="${readContentBean.eduSt_date != null}">
							<li><c:out value="${readContentBean.eduSt_date } ~ ${readContentBean.eduEnd_date }"/><br><c:out value="${readContentBean.edu_organ }(${readContentBean.detail_edu })" /></li>
							</c:if>
							<c:if test="${readContentBean.eduSt_date2 != null}">
							<li><c:out value="${readContentBean.eduSt_date2 } ~ ${readContentBean.eduEnd_date2 }"/><br><c:out value=" ${readContentBean.edu_organ2 }(${readContentBean.detail_edu2 })" /></li>
							</c:if>
							<c:if test="${readContentBean.eduSt_date3 != null}">
							<li><c:out value="${readContentBean.eduSt_date3 } ~ ${readContentBean.eduEnd_date3 }"/><br><c:out value=" ${readContentBean.edu_organ3 }(${readContentBean.detail_edu3 })" /></li>
							</c:if>
							<c:if test="${readContentBean.eduSt_date4 != null}">
							<li><c:out value="${readContentBean.eduSt_date4 } ~ ${readContentBean.eduEnd_date4 }"/><br><c:out value=" ${readContentBean.edu_organ4 }(${readContentBean.detail_edu4 })" /></li>
							</c:if>
						</ul>							
					</div>	
					<div class="div-content-25">
						<h2>CAREER</h2>
						<ul>
							<c:if test="${readContentBean.careerSt_date != null}">
							<li><c:out value="${readContentBean.careerSt_date } ~ ${readContentBean.careerEnd_date }"/><br><c:out value=" ${readContentBean.company }(${readContentBean.duty })" /></li>
							</c:if>
							<c:if test="${readContentBean.careerSt_date2 != null}">
							<li><c:out value="${readContentBean.careerSt_date2 } ~ ${readContentBean.careerEnd_date2 }"/><br><c:out value=" ${readContentBean.company2 }(${readContentBean.duty2 })" /></li>
							</c:if>
							<c:if test="${readContentBean.careerSt_date3 != null}">
							<li><c:out value="${readContentBean.careerSt_date3 } ~ ${readContentBean.careerEnd_date3 }"/><br><c:out value=" ${readContentBean.company3 }(${readContentBean.duty3 })" /></li>
							</c:if>
							<c:if test="${readContentBean.careerSt_date4 != null}">
							<li><c:out value="${readContentBean.careerSt_date4 } ~ ${readContentBean.careerEnd_date4 }"/><br><c:out value=" ${readContentBean.company4 }(${readContentBean.duty4 })" /></li>
							</c:if>
						</ul>							
					</div>
					<div class="div-content-25">
						<h2>AWARD</h2>
						<ul>
							<c:if test="${readContentBean.award_organ != null}">
							<li><c:out value=" ${readContentBean.award_organ }(${readContentBean.award_record })" /></li>
							</c:if>
							<c:if test="${readContentBean.award_organ2 != null}">
							<li><c:out value=" ${readContentBean.award_organ2 }(${readContentBean.award_record2 })" /></li>
							</c:if>
							<c:if test="${readContentBean.award_organ3 != null}">
							<li><c:out value=" ${readContentBean.award_organ3 }(${readContentBean.award_record3 })" /></li>
							</c:if>
							<c:if test="${readContentBean.award_organ4 != null}">
							<li><c:out value=" ${readContentBean.award_organ4 }(${readContentBean.award_record4 })" /></li>
							</c:if>
						</ul>							
					</div>
					<div class="div-content-25">
						<h2>SKILL</h2>
						<ul>
							<c:if test="${readContentBean.skill_nm != null}">
							<li><c:out value=" ${readContentBean.skill_nm }(${readContentBean.skill_stat })" /></li>
							</c:if>
							<c:if test="${readContentBean.skill_nm2 != null}">
							<li><c:out value=" ${readContentBean.skill_nm2 }(${readContentBean.skill_stat2 })" /></li>
							</c:if>
							<c:if test="${readContentBean.skill_nm3 != null}">
							<li><c:out value=" ${readContentBean.skill_nm3 }(${readContentBean.skill_stat3 })" /></li>
							</c:if>
							<c:if test="${readContentBean.skill_nm4 != null}">
							<li><c:out value=" ${readContentBean.skill_nm4 }(${readContentBean.skill_stat4 })" /></li>
							</c:if>
						</ul>							
					</div>		
					</div>			
				</div>			
		</section>
		<c:if test="${readContentBean.content_file != null}">
		<section class="section">
			<div class="outer-div"
			style="background: url(${root}upload/${readContentBean.content_file }) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${readContentBean.content_subject }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${readContentBean.content_text }</span><br>
						</div>
						
					</div>
				</div>			
			</div>
		</section>
		</c:if>
		<c:if test="${readContentBean.content_file2 != null}">
		<section class="section">
			<div class="outer-div"
			style="background: url(${root}upload/${readContentBean.content_file2 }) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${readContentBean.content_subject2 }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${readContentBean.content_text2 }</span><br>
						</div>						
					</div>
				</div>			
			</div>
		</section>
		</c:if>
		<c:if test="${readContentBean.content_file3 != null}">
		<section class="section">
			<div class="outer-div"
			style="background: url(${root}upload/${readContentBean.content_file3 }) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${readContentBean.content_subject3 }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${readContentBean.content_text3 }</span><br>
						</div>						
					</div>
				</div>			
			</div>
		</section>
		</c:if>
		<c:if test="${readContentBean.content_file4 != null}">
		<section class="section">
			<div class="outer-div"
			style="background: url(${root}upload/${readContentBean.content_file4 }) no-repeat center/cover;">
				<div class="inner-div">
					<div class="inner-hover">
						<div class="font-div">
							<span class="name-span">${readContentBean.content_subject4 }</span><br>
						</div>
						<div class="font-div">
							<span class="inner-span">${readContentBean.content_text4 }</span><br>
						</div>
					</div>
				</div>			
			</div>
		</section>
		</c:if>
		<footer class="section fp-auto-height">
						<div class="footer"
				style="padding-top: 30px; padding-bottom: 30px;"> 
				<div class="container" style="margin-left: 10%">
		<p>The PortFolio</p>
		<p>Email : pyb8527@gmail.com</p>		
		<p>Phone : +82 010-7667-8527</p>
	</div>
			</div>
		</footer>
	</main>
</body>
</html>