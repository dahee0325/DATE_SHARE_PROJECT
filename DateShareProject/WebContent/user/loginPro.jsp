<%@page import="dateShare.service.user.LoginService"%>
<%@page import="dateShare.Model.DateUser"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	
	LoginService service = LoginService.getInstance();
	
	DateUser dUser = service.login(u_id);
	
	if(u_id != null && dUser.getU_id() != null && dUser.getU_id().equals(u_id)){
		
		if(u_pw != null && dUser.getU_pw() != null && dUser.getU_pw().equals(u_pw))
		
		// 회원 정보가 존재 && 비밀번호가 일치
		// 세션에 회원 로그인 정보를 저장
		session.setAttribute("loginInfo", dUser.toLoginInfo());
		
		// 로그인 처리 후 메인페이지로 이동		
		response.sendRedirect("../main.jsp");  //web.xml에서 <welcome-file>index.html</welcome-file>로
														// 설정을 했으므로 index.jsp로 이동
														
	}else{
		out.println("아이디와 비밀번호를 확인하세요.");
	}
	
	
%>