<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./static/header.jsp"%>
<%@include file="./static/nav.jsp"%>
<% 
String get = request.getParameter("section") != null ? request.getParameter("section") : "";


switch(get) {
case "A" :
	%><%@include file="page/A.jsp"%><%
	break;
case "B" :
	%><%@include file="page/B.jsp"%><%
	break;
case "C" :
	%><%@include file="page/C.jsp"%><%
	break;
case "for" :
	%><%@include file="page/for.jsp"%><%
	break;
case "select" :
	%><%@include file="page/db_select.jsp"%><%
	break;
case "salelist_select" :
	%><%@include file="page/salelist_select.jsp"%><%
	break;
default:
	%><%@include file="./static/index.jsp"%><%
}
%>
<%@include file="./static/footer.jsp"%>