<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<table border="1">
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		String query = "SELECT SALE.SALENO, SALE.SCODE, SALE.SALEDATE, PIZZA.PNAME, SALE.AMOUNT FROM TBL_PIZZA_01 PIZZA, TBL_SALELIST_01 SALE WHERE PIZZA.PCODE = SALE.PCODE";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {%>
			<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>	
			<td><%=rs.getInt(5)%></td>
			</tr>
		<%}
		stmt.close();
		conn.close();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>