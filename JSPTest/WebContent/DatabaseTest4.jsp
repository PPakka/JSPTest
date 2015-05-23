<%! 
String driver = "org.mariadb.jdbc.Driver" ;
String url = "jdbc:mariadb://localhost:3306/test";
String userid="root";
String password="sks197382";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<td>아이디</td><td>이름</td><td>비밀번호</td><td>주소</td><td>전화번호</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
Connection conn = DriverManager.getConnection(url, userid, password);
Statement stmt = conn.createStatement();
String query="SELECT * FROM Users";
ResultSet rs = stmt.executeQuery(query);
while(rs.next()){
%>

<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
</tr>

<%}


rs.close();
stmt.close();
conn.close();
%>
</table>
</body>
</html>