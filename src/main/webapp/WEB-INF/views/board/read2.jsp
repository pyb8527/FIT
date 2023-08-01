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
	body{
	background-color:whitesmoke
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
	<div class="container" style="margin-top: 150px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<c:if test="${readContentBean.content_file != null}">
							<div class="form-group">
								<label for="board_file">Attached image</label> <img
									src="${root }upload/${readContentBean.content_file}"
									width="100%" />
							</div>
							<div class="form-group">
								<label for="board_file">Attached image2</label> <img
									src="${root }upload/${readContentBean.content_file2}"
									width="100%" />
							</div>
							<div class="form-group">
								<label for="board_file">Attached image3</label> <img
									src="${root }upload/${readContentBean.content_file3}"
									width="100%" />
							</div>
							<div class="form-group">
								<label for="board_file">Attached image4</label> <img
									src="${root }upload/${readContentBean.content_file4}"
									width="100%" />
							</div>
						</c:if>
						<div class="form-group">
							<div class="text-right">
								<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${page}" class="btn btn-primary">List view</a>
								<c:if test="${loginUserBean.user_idx == readContentBean.content_writer_idx}"> 
								<a href="${root }board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" 
								   class="btn btn-info">Edit</a> 
								<a href="${root }board/delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" 
								   class="btn btn-danger">Delete</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />
</body>
</html>