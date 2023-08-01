<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
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
tbody a:hover, tbody a.active {
	background-color: rgba(255, 255, 255, 0);
	text-decoration: underline 2px !important;
	color: black;
}

tbody a {
	color: black;
}

tbody a:link {
	color: black;
}

tbody a:visited {
	color: black;
}
.text-right a{
	color:white;
}
	body{
	background-color:whitesmoke
}
.tumbsnailbox{
	width:220px; height:auto;
	margin: 0px auto;
	position:relative;
}
.tumbsnail{
	width:220px; height:150px;
	position:absolute;
	top: 5px; left:0px;
}
.tumbsnail2{
	width:220px; height:150px;
	transition: 1s;
	position:absolute;
	top: 5px; left:0px;
	opacity:0;
}
.tumbsnail3{
	width:220px; height:150px;
	transition: 1s;
	position:absolute;
	top: 5px; left:0px;
	opacity:0;
}
.tumbsnail4{
	width:220px; height:150px;
	transition: 1s;
	position:absolute;
	top: 5px; left:0px;
	opacity:0;
}
.tumbsnailbox:hover .tumbsnail2{opacity:1; transform: translateX(-230px);}
.tumbsnailbox:hover .tumbsnail3{opacity:1; transform: translateX(-460px);}
.tumbsnailbox:hover .tumbsnail4{opacity:1; transform: translateX(-690px);}
.tumbsnailbox:hover .btn-plus{opacity:0; }
.btn-plus {
  position:absolute;
  top:120px;
  left:185px;
  background:black;
  width:35px;
  height:35px;
  border-radius:50%;
  text-align:center;
}

/* 추가된 부분 */
.btn-plus span {
  line-height:30px;
  font-size:2em;
  color:#ffffff;
  user-select:none;
}
</style>
</head>
<body>
<%@ include file="../include/BoardMenu.jsp" %>
	<!-- 게시글 리스트 -->
	<div class="container" style="margin-top: 100px;">
		<div class="card shadow">
			<div class="card-body">
				<h2 class="card-title">Share your experiences in ${boardInfoName} !</h2>
				<table class="table table-hover" id='board_list'>
					<!-- <thead> 
					<tr>
						<th class="text-center d-none d-md-table-cell">글번호</th>
						<th class="w-50">제목</th>
						<th class="text-center d-none d-md-table-cell">작성자</th>
						<th class="text-center d-none d-md-table-cell">작성날짜</th>
					</tr>
				</thead> -->
					<tbody>
						<c:forEach var="obj" items="${contentList }">
							<tr>
								<td class="text-left d-none d-md-table-cell"><h5>${obj.content_kategori}<br><br>
								 ${obj.content_writer_name }</h5>
									<h4>
										<a
											href='${root }board/myslide?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}'>${obj.content_contest }</a><br>
									</h4><br>

								</td>
								<td class="tumbsnailbox">
								<a href="${root }board/myslide?board_info_idx=${board_info_idx }&content_idx=${obj.content_idx }&page=${page}">
								<c:if test="${obj.content_file != null}">
								<div class="btn-plus"><span draggable="false">+</span></div>
								<img class="tumbsnail" src="${root }upload/${obj.content_file }" >
								</c:if>
								<c:if test="${obj.content_file2 != null}">
								<div class="btn-plus"><span draggable="false">+</span></div>
								<img class="tumbsnail2" src="${root }upload/${obj.content_file2 }">
								</c:if>
								<c:if test="${obj.content_file3 != null}">
								<div class="btn-plus"><span draggable="false">+</span></div>
								<img class="tumbsnail3" src="${root }upload/${obj.content_file3 }">
								</c:if>
								<c:if test="${obj.content_file4 != null}">
								<div class="btn-plus"><span draggable="false">+</span></div>
								<img class="tumbsnail4" src="${root }upload/${obj.content_file4 }">
								</c:if>
								</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:import url="/WEB-INF/views/include/Pagination.jsp" />

				<%-- <div class="text-right">
					<a href="${root }board/write?board_info_idx=${board_info_idx}&page=${page}"
						class="btn btn-primary">Write</a>
				</div> --%>

			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/BottomMenu.jsp" />

</body>
</html>






