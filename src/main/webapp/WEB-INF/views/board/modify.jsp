<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value='${pageContext.request.contextPath}/' />
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<c:import url="/WEB-INF/views/include/Bootstrap4.jsp" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="${root }/css/jquery.fullPage.css" rel="stylesheet"
	type="text/css">
<link href="${root }/css/main.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

 <link rel="stylesheet" href="/resources/demos/style.css">

 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
<script src="${root }/js/jquery.fullPage.js"></script>
<script src="${root }/js/main.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>

<style>
body {
	background-color: whitesmoke
}
.content-25-img > img{
	margin-top:15px; width:150px; height:200px; border-radius:50%; border: solid 1px navy;
}
.content-25-img-i > img{
	width:200px; height:150px; margin-left:100px; margin_top:-50px; border: solid 1px navy;
}
.hidden{opacity:0;}
</style>
<script>
$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});
  $( function() {
    $( "#careerStDatepicker4, #careerEndDatepicker4, #careerStDatepicker3, #careerEndDatepicker3, #careerStDatepicker2, #careerEndDatepicker2, #careerStDatepicker, #careerEndDatepicker, #eduStDatepicker, #eduEndDatepicker, #eduStDatepicker2, #eduEndDatepicker2, #eduStDatepicker3, #eduEndDatepicker3, #eduStDatepicker4, #eduEndDatepicker4, #user_age, #licenseDatepicker, #licenseDatepicker2, #licenseDatepicker3, #licenseDatepicker4" ).datepicker();
  } );
  </script>
</head>
<body>
	<%@ include file="../include/TopMenu.jsp" %>
	<br>
	<br>
	<br>
	<main id="fullpage">	
	<section class="section">
	<form:form
				action='${root }board/modify_pro?board_info_idx=${board_info_idx}&content_idx=${content_idx }'
				modelAttribute="modifyContentBean" enctype="multipart/form-data" style="display:flex">		
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
			
				<div class="col-sm-5" style="margin-left:-200px;">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">PROFILE</h4>
							<form:hidden path="content_board_idx" />
							<form:hidden path="user_idx" />							
							<div class="form-group">
								<form:label path="content_kategori">Kategori</form:label>
								<form:select path="content_kategori" class='form-control'>
									<c:forEach var="kategori" items="${boardKategori}"
										varStatus="status">
										<option value="${kategori.kategoriNo}"
										<c:if test="${kategori.kategoriNo eq modifyContentBean.content_kategori }">selected</c:if>>
										${kategori.kategoriNm}</option>
									</c:forEach>
								</form:select>
								<form:errors path='content_kategori' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="id_pic">ID PIC.</form:label>
								<c:if test="${modifyContentBean.user_face != null }">
								<div class="content-25-img">
								<img src="${root}upload/${modifyContentBean.user_face}"/>
								</div>
								</c:if>
								<c:if test="${modifyContentBean.user_face eq null }">
								<form:input type='file' path='id_pic' class="form-control"
									accept="image/*"/>
								</c:if>								
							</div>
							<div class="form-group">
								<form:label path="content_contest">intro.</form:label>
								<form:input path="content_contest" class="form-control"
									rows="3" style="resize:none"/>
								<form:errors path='content_contest' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="user_age">생년월일</form:label><br>
								<form:input id="user_age" path="user_age" class='form-control-50' />								
							</div>
							<div class="form-group">
								<form:label path="user_email">E-mail</form:label>
								<form:input path="user_email" class="form-control"
									rows="1" style="resize:none"/>
								<form:errors path='user_email' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="user_phone">Phone</form:label>
								<form:input path="user_phone" class="form-control"
									rows="1" style="resize:none"/>
								<form:errors path='user_phone' style='color:red' />
							</div>							
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st LICENSE</h4>
							<div class="form-group">
								<form:label path="license_name">자격증 종류</form:label>
								<form:input path="license_name" class='form-control' />
								<form:errors path='license_name' style='color:red' />
							</div>
							
							<div class="form-group">
							취득일자
							<br>
							<form:input id="licenseDatepicker" path="license_date" class='form-control-50' />
							</div>
														
							<div class="form-group">
								<form:label path="license_organ">발급처</form:label>
								<form:input path="license_organ" class="form-control" />
								<form:errors path='license_organ' style='color:red' />								
							</div>
							<h4 class="card-title">2nd LICENSE</h4>
							<div class="form-group">
								<form:label path="license_name2">자격증 종류</form:label>
								<form:input path="license_name2" class='form-control' />
								<form:errors path='license_name2' style='color:red' />
							</div>
							
							<div class="form-group">
							취득일자
							<br>
							<form:input id="licenseDatepicker2" path="license_date2" class='form-control-50' />
							</div>
														
							<div class="form-group">
								<form:label path="license_organ2">발급처</form:label>
								<form:input path="license_organ2" class="form-control" />
								<form:errors path='license_organ2' style='color:red' />								
							</div>																			
						</div>
				</div>
				</div>	
				<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd LICENSE</h4>
							<div class="form-group">
								<form:label path="license_name3">자격증 종류</form:label>
								<form:input path="license_name3" class='form-control' />
								<form:errors path='license_name3' style='color:red' />
							</div>
							
							<div class="form-group">
							취득일자
							<br>
							<form:input id="licenseDatepicker3" path="license_date3" class='form-control-50'/>							
							</div>
														
							<div class="form-group">
								<form:label path="license_organ3">발급처</form:label>
								<form:input path="license_organ3" class="form-control" />
								<form:errors path='license_organ3' style='color:red' />								
							</div>
							<h4 class="card-title">4th LICENSE</h4>
							<div class="form-group">
								<form:label path="license_name4">자격증 종류</form:label>
								<form:input path="license_name4" class='form-control' />
								<form:errors path='license_name4' style='color:red' />
							</div>
							
							<div class="form-group">
							취득일자
							<br>
							<form:input id="licenseDatepicker4" path="license_date4" class='form-control-50' />
							</div>
														
							<div class="form-group">
								<form:label path="license_organ4">발급처</form:label>
								<form:input path="license_organ4" class="form-control" />
								<form:errors path='license_organ4' style='color:red' />								
							</div>																			
						</div>
				</div>
				</div>			
			</div>				
		</div>
	</div>	
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st EDUCATION</h4>
							<form:hidden path="content_board_idx" />							
							<div class="form-group">
							재학 기간
							<br>
							<form:input id="eduStDatepicker" path="eduSt_date" class='form-control-50' /> ~ <form:input id="eduEndDatepicker" path="eduEnd_date" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="edu_organ">기관 명</form:label>
								<form:input path="edu_organ" class='form-control' />
								<form:errors path='edu_organ' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="detail_edu">세부 명(학과(학부))</form:label>
								<form:input path="detail_edu" class="form-control" />
								<form:errors path='detail_edu' style='color:red' />								
							</div>
							<h4 class="card-title">2nd EDUCATION</h4>
							<form:hidden path="content_board_idx" />							
							<div class="form-group">
							재학 기간
							<br>
							<form:input id="eduStDatepicker2" path="eduSt_date2" class='form-control-50' /> ~ <form:input id="eduEndDatepicker2" path="eduEnd_date2" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="edu_organ2">기관 명</form:label>
								<form:input path="edu_organ2" class='form-control' />
								<form:errors path='edu_organ2' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="detail_edu2">세부 명(학과(학부))</form:label>
								<form:input path="detail_edu2" class="form-control" />
								<form:errors path='detail_edu2' style='color:red' />								
							</div>																								
						</div>				
					</div>
				</div>	
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd EDUCATION</h4>
							<form:hidden path="content_board_idx" />							
							<div class="form-group">
							재학 기간
							<br>
							<form:input id="eduStDatepicker3" path="eduSt_date3" class='form-control-50' /> ~ <form:input id="eduEndDatepicker3" path="eduEnd_date3" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="edu_organ3">기관 명</form:label>
								<form:input path="edu_organ3" class='form-control' />
								<form:errors path='edu_organ3' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="detail_edu3">세부 명(학과(학부))</form:label>
								<form:input path="detail_edu3" class="form-control" />
								<form:errors path='detail_edu3' style='color:red' />								
							</div>
							<h4 class="card-title">4th EDUCATION</h4>
							<form:hidden path="content_board_idx" />							
							<div class="form-group">
							재학 기간
							<br>
							<form:input id="eduStDatepicker4" path="eduSt_date4" class='form-control-50' /> ~ <form:input id="eduEndDatepicker4" path="eduEnd_date4" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="edu_organ4">기관 명</form:label>
								<form:input path="edu_organ4" class='form-control' />
								<form:errors path='edu_organ4' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="detail_edu4">세부 명(학과(학부))</form:label>
								<form:input path="detail_edu4" class="form-control" />
								<form:errors path='detail_edu4' style='color:red' />								
							</div>
							<div class="form-group">
								<div class="text-right">
									<a href="${root }board/main?board_info_idx=${board_info_idx}"
										class="btn btn-primary">List view</a>
									<form:button class='btn btn-primary'>Modify</form:button>
								</div>
							</div>																								
						</div>				
					</div>
				</div>					
			</div>
			</div>
			</div>		
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st CARRER</h4>
							
							<div class="form-group">
							재직 기간
							<br>
							<form:input id="careerStDatepicker" path="careerSt_date" class='form-control-50' /> ~ <form:input id="careerEndDatepicker" path="careerEnd_date" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="company">회사 명</form:label>
								<form:input path="company" class='form-control' />
								<form:errors path='company' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="duty">직무</form:label>
								<form:input path="duty" class="form-control" />
								<form:errors path='duty' style='color:red' />								
							</div>
							<h4 class="card-title">2nd CARRER</h4>
							
							<div class="form-group">
							재직 기간
							<br>
							<form:input id="careerStDatepicker2" path="careerSt_date2" class='form-control-50' /> ~ <form:input id="careerEndDatepicker2" path="careerEnd_date2" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="company2">회사 명</form:label>
								<form:input path="company2" class='form-control' />
								<form:errors path='company2' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="duty2">직무</form:label>
								<form:input path="duty2" class="form-control" />
								<form:errors path='duty2' style='color:red' />								
							</div>																							
						</div>
				</div>
				</div>
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd CARRER</h4>
							
							<div class="form-group">
							재직 기간
							<br>
							<form:input id="careerStDatepicker3" path="careerSt_date3" class='form-control-50' /> ~ <form:input id="careerEndDatepicker3" path="careerEnd_date3" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="company3">회사 명</form:label>
								<form:input path="company3" class='form-control' />
								<form:errors path='company3' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="duty3">직무</form:label>
								<form:input path="duty3" class="form-control" />
								<form:errors path='duty3' style='color:red' />								
							</div>
							<h4 class="card-title">4th CARRER</h4>
							
							<div class="form-group">
							재직 기간
							<br>
							<form:input id="careerStDatepicker4" path="careerSt_date4" class='form-control-50' /> ~ <form:input id="careerEndDatepicker4" path="careerEnd_date4" class='form-control-50' />
							</div>
							<div class="form-group">
								<form:label path="company4">회사 명</form:label>
								<form:input path="company4" class='form-control' />
								<form:errors path='company4' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="duty4">직무</form:label>
								<form:input path="duty4" class="form-control" />
								<form:errors path='duty4' style='color:red' />								
							</div>																									
						</div>
				</div>
				</div>
			</div>				
		</div>
	</div>
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st AWARD</h4>
							
							<div class="form-group">
								<form:label path="award_organ">주최 기관</form:label>
								<form:input path="award_organ" class='form-control' />
								<form:errors path='award_organ' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="award_record">수상 성적</form:label>
								<form:input path="award_record" class='form-control' />
								<form:errors path='award_record' style='color:red' />
							</div>																																	
							<h4 class="card-title">2nd AWARD</h4>
							
							<div class="form-group">
								<form:label path="award_organ2">주최 기관</form:label>
								<form:input path="award_organ2" class='form-control' />
								<form:errors path='award_organ2' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="award_record2">수상 성적</form:label>
								<form:input path="award_record2" class='form-control' />
								<form:errors path='award_record2' style='color:red' />
							</div>																								
						</div>
				</div>
				</div>
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd AWARD</h4>
							
							<div class="form-group">
								<form:label path="award_organ3">주최 기관</form:label>
								<form:input path="award_organ3" class='form-control' />
								<form:errors path='award_organ3' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="award_record3">수상 성적</form:label>
								<form:input path="award_record3" class='form-control' />
								<form:errors path='award_record3' style='color:red' />
							</div>
							<h4 class="card-title">4th AWARD</h4>
							
							<div class="form-group">
								<form:label path="award_organ4">주최 기관</form:label>
								<form:input path="award_organ4" class='form-control' />
								<form:errors path='award_organ4' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="award_record4">수상 성적</form:label>
								<form:input path="award_record4" class='form-control' />
								<form:errors path='award_record4' style='color:red' />
							</div>																		
						</div>
				</div>
				</div>
			</div>				
		</div>
	</div>
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st SKILL</h4>
														
							<div class="form-group">
								<form:label path="skill_nm">기술 종류</form:label>
								<form:input path="skill_nm" class='form-control' />
								<form:errors path='skill_nm' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="skill_stat">숙련도</form:label>
								<form:input path="skill_stat" class="form-control" />
								<form:errors path='skill_stat' style='color:red' />								
							</div>
							<h4 class="card-title">2nd SKILL</h4>
							
							<div class="form-group">
								<form:label path="skill_nm2">기술 종류</form:label>
								<form:input path="skill_nm2" class='form-control' />
								<form:errors path='skill_nm2' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="skill_stat2">숙련도</form:label>
								<form:input path="skill_stat2" class="form-control" />
								<form:errors path='skill_stat2' style='color:red' />								
							</div>																								
						</div>
				</div>
				</div>
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd SKILL</h4>
							
							<div class="form-group">
								<form:label path="skill_nm3">기술 종류</form:label>
								<form:input path="skill_nm3" class='form-control' />
								<form:errors path='skill_nm3' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="skill_stat3">숙련도</form:label>
								<form:input path="skill_stat3" class="form-control" />
								<form:errors path='skill_stat3' style='color:red' />								
							</div>
							<h4 class="card-title">4th SKILL</h4>
							
							<div class="form-group">
								<form:label path="skill_nm4">기술 종류</form:label>
								<form:input path="skill_nm4" class='form-control' />
								<form:errors path='skill_nm4' style='color:red' />
							</div>																										
							<div class="form-group">
								<form:label path="skill_stat4">숙련도</form:label>
								<form:input path="skill_stat4" class="form-control" />
								<form:errors path='skill_stat4' style='color:red' />								
							</div>	
							<div class="form-group">
								<div class="text-right">
									<a href="${root }board/main?board_info_idx=${board_info_idx}"
										class="btn btn-primary">List view</a>
									<form:button class='btn btn-primary'>Write</form:button>
								</div>
							</div>																		
						</div>
				</div>
				</div>
			</div>				
		</div>
	</div>
	<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">1st WORK</h4>
							<div class="form-group">
								<form:label path="content_subject">TITLE</form:label>
								<form:input path="content_subject" class="form-control" />
								<form:errors path='content_subject' style='color:red' />								
							</div>							
							<div class="form-group">								
								<c:if test="${modifyContentBean.content_file != null }">
								<div class="content-25-img-i">
								<img src="${root}upload/${modifyContentBean.content_file}"/>
								</div>
								</c:if>
								<form:input type='file' path='upload_file' class="form-control"
									accept="image/*"/>
							</div>		
							<div class="form-group">
								<form:label path="content_text">TEXT</form:label>
								<form:input path="content_text" class="form-control" />
								<form:errors path='content_text' style='color:red' />								
							</div>
							<h4 class="card-title">2nd WORK</h4>
							<div class="form-group">
								<form:label path="content_subject2">TITLE</form:label>
								<form:input path="content_subject2" class="form-control" />
								<form:errors path='content_subject2' style='color:red' />								
							</div>							
							<div class="form-group">
								<c:if test="${modifyContentBean.content_file2 != null }">
								<div class="content-25-img-i">
								<img src="${root}upload/${modifyContentBean.content_file2}"/>
								</div>
								</c:if>
								<form:input type='file' path='upload_file2' class="form-control"
									accept="image/*"/>										
							</div>		
							<div class="form-group">
								<form:label path="content_text2">TEXT</form:label>
								<form:input path="content_text2" class="form-control" />
								<form:errors path='content_text2' style='color:red' />								
							</div>																							
						</div>
				</div>
				</div>
				<div class="col-sm-6">
				<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">3rd WORK</h4>
							<div class="form-group">
								<form:label path="content_subject3">TITLE</form:label>
								<form:input path="content_subject3" class="form-control" />
								<form:errors path='content_subject3' style='color:red' />								
							</div>							
							<div class="form-group">
								<c:if test="${modifyContentBean.content_file3 != null }">
								<div class="content-25-img-i">
								<img src="${root}upload/${modifyContentBean.content_file3}"/>
								</div>
								</c:if>
								<form:input type='file' path='upload_file3' class="form-control"
									accept="image/*"/>
							</div>		
							<div class="form-group">
								<form:label path="content_text3">TEXT</form:label>
								<form:input path="content_text3" class="form-control" />
								<form:errors path='content_text3' style='color:red' />								
							</div>
							<h4 class="card-title">4th WORK</h4>
							<div class="form-group">
								<form:label path="content_subject4">TITLE</form:label>
								<form:input path="content_subject4" class="form-control" />
								<form:errors path='content_subject4' style='color:red' />								
							</div>							
							<div class="form-group">
								<c:if test="${modifyContentBean.content_file4 != null }">
								<div class="content-25-img-i">
								<img src="${root}upload/${modifyContentBean.content_file4}"/>
								</div>
								</c:if>
								<form:input type='file' path='upload_file4' class="form-control"
									accept="image/*"/>																
							</div>		
							<div class="form-group">
								<form:label path="content_text4">TEXT</form:label>
								<form:input path="content_text4" class="form-control" />
								<form:errors path='content_text4' style='color:red' />								
							</div>																							
						</div>
				</div>
				</div>				
			</div>				
		</div>
	</div>
</form:form>
	</section>	
	</main>


	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />
</body>
</html>
