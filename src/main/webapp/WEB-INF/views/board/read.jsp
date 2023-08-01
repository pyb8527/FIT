<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath }/' />
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/include/Bootstrap4.jsp" /> 

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
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
	.form-control-img{
	display:inline-block}
	body{
	background-color:whitesmoke
}
	</style>
</head>
<body>
	<%@ include file="../include/BoardMenu.jsp" %>
	
	<main id="fullpage">
		<section class="section">
		<div class="slide"
			style="background-color:#dedede;">
	<div class="container">
		<div style="display:flex">
			<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">PROFILE</h4>							
							<input type="hidden" name="page" value="${page}">
							
							<div class="form-group">
								<label>Kategori</label>
								<input type="text" name="content_kategori" class='form-control' value="${readContentBean.content_kategori }" disabled readonly/>																											
							</div>
							<div class="form-control-img" >
								<img src="${root }upload/${readContentBean.user_face }" class="img-thumbnail">																							
							</div>
							<div class="form-group">
								<label>Name</label>
								<input type="text" name="user_name" class="form-control" value="${readContentBean.content_writer_name }" disabled readonly/>								
							</div>
							<div class="form-group">
								<label>Address</label>
								<input type="text" name="user_address" class="form-control" value="${readContentBean.user_address }" disabled readonly/>
							</div>
							<div class="form-group">
								<label>Phone</label>
								<input type="text" name="user_phone" class="form-control" value="${readContentBean.user_phone }" disabled readonly/>
							</div>							
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">CAREER</h4>
							<input type="hidden" name="page" value="${page}">
									
							<div class="form-group">
								<label>Company</label>
								<input name="content_subject2" class='form-control' value="${readContentBean.content_subject2 }" disabled readonly/>								
							</div>		
							
							<div class="form-group">
							Date
							<br>
							<input id="StDatepicker" name="StDate1" class='form-control-50' value="${readContentBean.st_date }" disabled readonly/> ~ <input id="EndDatepicker" name="EndDate1" class='form-control-50' value="${readContentBean.end_date }" disabled readonly/>
							</div>							
							<div class="form-group">
								<label>Company</label>
								<input name="content_subject2" class='form-control' value="${readContentBean.content_text }" disabled readonly/>								
							</div>							
							
							<div class="form-group">
							Date
							<br>
							<input id="StDatepicker" name="StDate1" class='form-control-50' value="${readContentBean.st_date }" disabled readonly/> ~ <input id="EndDatepicker" name="EndDate1" class='form-control-50' value="${readContentBean.end_date }" disabled readonly/>
							</div>							
							<div class="form-group">
								<label>Company</label>
								<input name="content_subject2" class='form-control' value="${readContentBean.content_text }" disabled readonly/>								
							</div>	
							
							<div class="form-group">
							Date
							<br>
							<input id="StDatepicker" name="StDate1" class='form-control-50' value="${readContentBean.st_date }" disabled readonly/> ~ <input id="EndDatepicker" name="EndDate1" class='form-control-50' value="${readContentBean.end_date }" disabled readonly/>
							</div>							
							<div class="form-group">
								<label>Company</label>
								<input name="content_subject2" class='form-control' value="${readContentBean.content_text }" disabled readonly/>								
							</div>													
							<div class="form-group">
								<div class="text-right">
									<a href="${root }board/main?board_info_idx=${board_info_idx}"
										class="btn btn-primary">List view</a>
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
							<h4 class="card-title">AWARDS</h4>
							<div class="form-group">
								<label>Contest</label>
								<input name="content_contest" class='form-control' value="${readContentBean.content_contest }" disabled readonly/>								
							</div>
							<div class="form-group">
							<label>Award type</label>
								<input name="content_awardType" class='form-control' value="${readContentBean.content_awardType }" disabled readonly/>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card shadow">
						<div class="card-body">
							<h4 class="card-title">WORK</h4>
							<div class="form-group">
							<label>Title</label>
								<input name="content_work_title" class='form-control' value="${readContentBean.content_work_title }" disabled readonly/>								
							</div>
							<div class="form-group">
							<label>Subject</label>
								<input name="content_work_subject" class='form-control' value="${readContentBean.content_work_subject }" disabled readonly/>
							</div>		
							<div class="form-group">
							<div class="form-control-img" style="height:auto">
								<img src="${root }upload/${readContentBean.content_file }" class="img-thumbnail">
							</div>
							<div class="form-control-img" style="height:auto">
								<img src="${root }upload/${readContentBean.content_file2 }" class="img-thumbnail">
							</div>
							<div class="form-control-img" style="height:auto">
								<img src="${root }upload/${readContentBean.content_file3 }" class="img-thumbnail">
							</div>
							<div class="form-control-img" style="height:auto">
								<img src="${root }upload/${readContentBean.content_file4 }" class="img-thumbnail">																																				
							</div>
							<div class="form-group">
								<div class="text-right">
									<a href="${root }board/main?board_info_idx=${board_info_idx}"
										class="btn btn-primary">List view</a>
								</div>
							</div>					
					</div>
				</div>
			</div>			
		</div>
	</div>
	</div>
	</section>
	</main>
	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />
</body>
</html>