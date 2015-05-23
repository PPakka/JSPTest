
<%! 
String driver = "org.mariadb.jdbc.Driver" ;
String url = "jdbc:mariadb://localhost:3306/test";
String userid="root";
String password="sks197382";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn;
ResultSet rs;
Statement stmt;
Class.forName(driver);
conn = DriverManager.getConnection(url, userid, password);
String query = "SELECT id, name, pwd, address, phone FROM Users";
stmt = conn.createStatement();
rs = stmt.executeQuery(query);
while(rs.next()){
	out.println(rs.getString(1));
	out.println(rs.getString(2));
	out.println(rs.getString(3));
	out.println(rs.getString(4));
	out.println(rs.getString(5));
}
rs.close();
stmt.close();
conn.close();
%>
</body>
</html>