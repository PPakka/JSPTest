<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<form method="POST" action="DatabaseTest3.jsp">
<h1>회원의 정보 입력 폼</h1>
아이디 : <input type="text" name="id"><p>
이름 : <input type="text" name="name"><p>
비밀번호 : <input type="password" name="pwd"><p>
주소 : <input type="text" name="address"><p>
전화번호 : <input type="text" name="phone"><p>
<input type="submit" value="전송">
<inpit type="reset" value="취소">
</form>
</body>
</html>