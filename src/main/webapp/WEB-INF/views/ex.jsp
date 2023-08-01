<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<c:import url="/WEB-INF/views/include/Bootstrap4.jsp" />
<script>
$(function(){	 

	$(document).ready(function(){

		$('select[name=emailSelection]').change(function() {

			if($(this).val()=="1"){

				$('#email2').val("");

			} else {

				$('#email2').val($(this).val());

				$("#email2").attr("readonly", true);

			}

		});

	});

});
</script>
<div>

	<label class="contentlabel">사용자이메일</label>

	<input class="" id="email1" type="text" class="box"> @ 

	<input class="" id="email2" type="text" class="box">

		<select id="emailSelection" name="emailSelection">

			<option value="1" selected="selected">직접입력</option>

			<option value="gmail.com">gmail.com</option>

			<option value="naver.com">naver.com</option>

			<option value="hanmail.net">hanmail.net</option>

		</select>

	<button type="button" class="btn btn-success" id="sendContact">완료</button>

	<button type="button" class="btn btn-warning" id="cancelContact" onclick="javascript:history.back()">취소</button>

</div>