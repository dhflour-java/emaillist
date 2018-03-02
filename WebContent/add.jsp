<%@page import="kr.co.dhflour.emaillist.dao.EmailListDao"%>
<%@page import="kr.co.dhflour.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding( "utf-8" );

	String firstName = request.getParameter( "fn" );
	String lastName = request.getParameter( "ln" );
	String email = request.getParameter( "email" );

	EmailListVo vo = new EmailListVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmailListDao dao = new EmailListDao();
	dao.insert( vo );
	
	response.sendRedirect( "/emaillist" );
%>