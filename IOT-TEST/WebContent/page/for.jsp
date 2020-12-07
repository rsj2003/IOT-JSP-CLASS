<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1">
<%
	int[] array = {1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};
	for (int number: array) {
		if(number % 10 == 1) { %>
			<tr>
			<td><%=number%></td>
		<%}else if(number % 10 == 1) {%>
			<td><%=number%></td>
			<tr>
		<%}else {%>
			<td><%=number%></td>
		<%}
	}

%>
</table>