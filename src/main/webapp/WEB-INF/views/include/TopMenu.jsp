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
				<li data-menuanchor="section1"><a href="#section1" class="btn6">ART</a></li>
				<li data-menuanchor="section2"><a href="#section2" class="btn6">ARCHITECTURE</a></li>
				<li data-menuanchor="section3"><a href="#section3" class="btn6">IT</a></li>
				<li data-menuanchor="section4"><a href="#section4" class="btn6">DESIGN</a></li>
				<li data-menuanchor="section5"><a href="#section5" class="btn6">SPORTS</a></li>
				<li class="space"></li>
				<li><a href="${root }board/main?board_info_idx=1" class="btn6">COMMUNITY</a></li>
				<li><a href="${root }user/myslide" class="btn6">MY PAGE</a></li>
				<li><a href="${root }user/logout" class="btn6">SIGN OUT</a></li>
			</ul>
		</nav>
	</header>