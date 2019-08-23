<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DATE SHARE | FOOD</title>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<style>
.starR1 {
	background: url('../images/star.png') no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background: url('../images/star.png') no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}

.starRev {
	margin: 0 auto;
	width: 150px;
}

#input_title {
	height: 43px;
	width: 440px;
}

#input_title input {
	height: 43px;
	width: 440px;
	font-size: 18px;
	background-color: rgba(255, 255, 255, 0);
	border: 0;
	border-bottom: 1px solid gray;
	font-weight: bold;
}

input {
	background-color: rgba(255, 255, 255, 0);
	border: 0;
}

#star {
	width: 20px;
}

textarea {
	background-color: rgba(255, 255, 255, 0);
	border: 1px solid #888;
	width: 400px;
	height: 200px;
	font-size: 18px;
	padding: 20px;
}
#input_submit{
	background-color: rgba(255, 255, 255, 0);
	border: 1px solid #888;
	width: 440px;
	height: 50px;
	margin-bottom: 30px 0;
	font-size: 16px;
}

#input_submit:hover{
	background-color : rgba(0, 0, 0, 0.1);
}

#h_title{
	padding: 20px 0;
	font-weight: bold;
}
#content_title {
	padding-bottom: 30px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://kit.fontawesome.com/8653072c68.js"></script>
<script>
	$(document).ready(function() {
		$('.starRev span').click(function() {

			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			$('#star').val($(this).text());
			return false;
		});
	});
</script>
</head>
<!-- 글쓰기를 눌렀을 때 현재 로그인 된 사용자, 임시로 넣었다 -->
<%-- 	<% session.setAttribute("u_num",5);%>  --%>
<%
	session = request.getSession(false);
	LoginInfo currentUser = (LoginInfo) session.getAttribute("userInfo");
%>
<body>
	<div id="wrap">
		<div id="main_wrap">
			<div id="header">
				<%@include file="../frame/my.jsp"%>
				<%@include file="../frame/header.jsp"%>
			</div>
			<div id="nav">
				<%@include file="../frame/nav.jsp"%>
			</div>
			<div id="content">
				<div id="content_title">
					<div id="h_title">
						<i class="fas fa-utensils"></i> 
						맛집 공유 게시판 | 글쓰기
					</div>
				</div>
				<div id="detail_wrap">

					<form action="writeFood.jsp" method="post" enctype="multipart/form-data" name="writeForm" id="writeForm">
						<!-- 제목 -->
						<center>
							<p id="input_title">
								<input type="text" name="f_title" placeholder="제목">
							</p>
							<br>

							<div class="starRev">
								<span class="starR1 on">1</span> <span class="starR2">2</span> <span class="starR1">3</span> <span class="starR2">4</span> <span class="starR1">5</span> <span class="starR2">6</span> <span class="starR1">7</span> <span class="starR2">8</span> <span class="starR1">9</span> <span class="starR2">10</span> <span><input type="text" id="star" name="f_star"><span>
							</div>

							<br>

							<p>
							
								
								<input type="file" name="f_path" id="input_path">
								
							</p>
							<br>
							<!-- 내용 -->
							<div>
								<textarea rows="5" cols="30" name="f_content"></textarea>
							</div>
							<br> <input type="hidden" name="u_num" value="<%=currentUser.getU_num()%>"> 
							<input id = "input_submit" type="submit" value="등록">
						</center>

					</form>
				</div>

			</div>
			<div id="footer">
				<%@include file="../frame/footer.jsp"%>
			</div>
		</div>
	</div>
</body>
<script>
	//게시글 작성
	/*  function formSubmit() {
	 alert('안뇽');
	 var params = $('#writeForm').serialize();
	 $.ajax ({
	 url: 'writeFood.jsp',
	 type: 'post',
	 data : params,
	 success: function(data){
	 alert(data);
	 //location.href='foodList.jsp';
	 }
	 }); 
	 }  
	 */
</script>
</html>