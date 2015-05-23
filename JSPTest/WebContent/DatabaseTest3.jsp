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
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String address = request.getParameter("address");
String phone = request.getParameter("phone");
Connection conn;
Statement stmt;
Class.forName(driver);
conn = DriverManager.getConnection(url, userid, password);
String sql = "insert into Users values (?,?,?,?,?)";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, pwd);
pstmt.setString(4, address);
pstmt.setString(5, phone);
stmt = conn.createStatement();
int members= pstmt.executeUpdate();
stmt.close();
conn.close();
pstmt.close();
if(members!=0) out.println("회원가입 성공");
%>
<a href="DatabaseTest4.jsp">회원 전체 목록 보기</a>
</body>
</html>
