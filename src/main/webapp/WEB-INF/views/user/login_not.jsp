<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var='root' value="${pageContext.request.contextPath }/" />
<script>
	alert('이용하시려면 로그-인 해주세요.')
	location.href='${root}user/login'
</script> 