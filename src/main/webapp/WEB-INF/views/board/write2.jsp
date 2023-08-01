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
<script src="${root }/js/jquery.fullPage.js"></script>
<script src="${root }/js/main.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>

<style>
body {
	background-color: whitesmoke
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
				<li class="li_logo"><a href="${root }main" class="btn6">FIT</a></li>
			</ul>
			<ul>
				<%-- <li>
				<form action="" method="POST">
				<input type="text" class="text" name="" onfocus="_Focus();"
					onblur="_blur();" id="_focus" value="Le Go Trip ! ">
				<!--  <a href="ex" class="ex"><img src="img/search.png" class="searchImg"></a> -->
			</form></li> --%>
				<li><a href="main?board_info_idx=1" class="btn6">SEOUL</a></li>
				<li><a href="main?board_info_idx=2" class="btn6">DAEJEON</a></li>
				<li><a href="main?board_info_idx=3" class="btn6">DAEGU</a></li>
				<li><a href="main?board_info_idx=4" class="btn6">BUSAN</a></li>
				<li><a href="main?board_info_idx=5" class="btn6">JEJU</a></li>
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
	<br>
	<br>
	<br>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">${boardInfoName}</h4>
						<form:form action='${root }board/write_pro2' method='post'
							modelAttribute="writeContentBean" enctype="multipart/form-data">
							<form:hidden path="content_board_idx" />
							<input type="hidden" name="page" value="${page}">
							<div class="form-group">
								<form:label path="content_kategori">Places Visited</form:label>
								<form:select path="content_kategori" class='form-control'>
								<option value="PLACE(궁)">PLACE(궁)</option>
								<option value="TOWER(타워)">TOWER(타워)</option>
								<option value="MUSEUM(박물관, 미술관)">MUSEUM(박물관, 미술관)</option>
								<option value="DOWNTOWN(도심)">DOWNTOWN(도심)</option>
								<option value="EXPO(엑스포)">EXPO(엑스포)</option>
								<option value="PARK(공원)">PARK(공원)</option>
								<option value="SIGHTS(명소)">SIGHTS(명소)</option>
								<option value="TRANITIONAL MARKET(전통시장)">TRANITIONAL MARKET(전통시장)</option>
								<option value="BRIDGE(대교)">BRIDGE(대교)</option>
								<option value="BEACH(해변)">BEACH(해변)</option>
								</form:select>
								<form:errors path='content_kategori' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="content_subject">Title</form:label>
								<form:input path="content_subject" class='form-control'/>
								<form:errors path='content_subject' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="content_text">Contents</form:label>
								<form:textarea path="content_text" class="form-control"
									rows="10" style="resize:none" />
								<form:errors path='content_text' style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="upload_file">1st Slide image</form:label>
								<form:input type='file' path='upload_file' class="form-control"
									accept="image/*" />
									<form:label path="upload_file2">2nd Slide image</form:label>
								<form:input type='file' path='upload_file2' class="form-control"
									accept="image/*" />
									<form:label path="upload_file3">3rd Slide image</form:label>
								<form:input type='file' path='upload_file3' class="form-control"
									accept="image/*" />
									<form:label path="upload_file4">4th Slide image</form:label>
								<form:input type='file' path='upload_file4' class="form-control"
									accept="image/*" />
							</div>
							<div class="form-group">
								<div class="text-right">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${page}" class="btn btn-primary">List view</a>
									<form:button class='btn btn-primary'>Write</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>


	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />
</body>
</html>
