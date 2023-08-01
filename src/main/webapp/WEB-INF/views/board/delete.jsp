<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var='root' value="${pageContext.request.contextPath }/" />
<script type="text/javascript">
	alert('정상적으로 삭제되었습니다.') 
	location.href='${root}board/main?board_info_idx=${board_info_idx}&page=${page}'
</script> 