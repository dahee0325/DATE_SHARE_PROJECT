<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>DATE SHARE : MESSAGE전송</title>
</head>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/content.css" rel="stylesheet" type="text/css">
<style></style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div id="wrap">
    <div id="main_wrap">
        <div id="header">
        	<%@include file="../frame/my.jsp" %>
            <%@include file="../frame/header.jsp" %>
        </div>
        <div id="nav">
            <%@include file="../frame/nav.jsp" %>
        </div>
        <div id="content">
           <div id="content_title">
               <h2>MESSAGE SEND</h2>
           </div>
           <div id="cform_wrap">
            <form action="writeMessage.jsp" method="post">
                <span>보내는 사람 </span><br>
            	<span>받는 사람</span><input class="c_input" type="text" name="m_to"><br>
            	<span>제목</span>
                <input class="c_input" type="text" name="m_title"><br>
                <span>내용</span>
                <textarea class="c_input_t" name="m_content" rows="5"></textarea><br>
            	<input class="c_btn" type="submit" value="보내기">
            	<a id="c_btna" href="messageList.jsp">이전으로</a>
            </form>
            </div>
        </div>
        <div id="footer">
            <%@include file="../frame/footer.jsp" %>
        </div>
    </div>
</div>
</body>
</html>