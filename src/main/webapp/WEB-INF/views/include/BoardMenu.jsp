<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!-- 상단 메뉴 부분 --> 
<header>
		<nav>
			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label>
			<ul class="ul_logo">
				<li class="li_logo"><a href="${root }main" class="btn6">THE</a></li>
			</ul>
			<ul>
				<li><a href="main?board_info_idx=1" class="btn6">ART</a></li>
				<li><a href="main?board_info_idx=2" class="btn6">ARCHITECTURE</a></li>
				<li><a href="main?board_info_idx=3" class="btn6">IT</a></li>
				<li><a href="main?board_info_idx=4" class="btn6">DESIGN</a></li>
				<li><a href="main?board_info_idx=5" class="btn6">SPORTS</a></li>
				<%-- <li><a href="${root }board/myslide?board_info_idx=${board_info_idx }&content_idx=${content_idx }&page=${page}">
				My PF</a></li> --%>
				<li class="space"></li>
				<li><a href="${root }/user/logout" class="btn6">SIGN OUT</a></li>
			</ul>
		</nav>
	</header>