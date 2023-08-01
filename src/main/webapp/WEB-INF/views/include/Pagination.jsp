<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<div class="d-none d-md-block">
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${pageBean.prevPage <= 0}">
				<li class="page-item disabled"><a class="page-link">Prev</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a
					href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}"
					class="page-link">Prev</a></li>
			</c:otherwise>
		</c:choose> 

		<c:forEach var='idx' begin="${pageBean.min }" end="${pageBean.max }">
		<c:choose>
			<c:when test="${idx == pageBean.currentPage}">
			<li class="page-item active"><a
						href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}"
						class="page-link">${idx }</a></li>
			</c:when>
			<c:otherwise>
					<li class="page-item"><a
						href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}"
						class="page-link">${idx }</a></li>
						</c:otherwise>
						</c:choose>
			</c:forEach>

		<c:choose>
			<c:when test="${pageBean.max >= pageBean.totalPage}">
				<li class="page-item disabled"><a class="page-link">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a
					href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}"
					class="page-link">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>


