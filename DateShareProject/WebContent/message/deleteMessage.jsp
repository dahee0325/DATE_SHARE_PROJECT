<%@page import="dateShare.service.message.DeleteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<%

	String num = request.getParameter("m_num");
	
	if (num != null) {
		int m_num = Integer.parseInt(num);
		//성공여부 cnt
		int resultCnt = 0;

		//서비스 객체 생성
		DeleteMessageService del_service = DeleteMessageService.getInstance();

		resultCnt = del_service.deleteMessage(m_num);
%>
<script>
$(document).ready(function() {
	
	alert( resultCnt + '개 메세지가 삭제되었습니다.');
	location.href='messageList.jsp';
	
});
</script>
