<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<center>

<h1>계산</h1>
<h2><%= session.getAttribute("login")%>님이 선택한 상품 목록</h2>
<hr style="border: outset 10px red;">
	<%
	if(session.getAttribute("ArrayList")==null){
	    out.println("상품이 없습니다");
	}//ArrayList가 비어있으면 상품이 없습니다를 출력함.
	else{
	out.println(session.getAttribute("ArrayList"));
	}//아니면 ArrayList에 있는 내용을 출력해라
	%>
	<br>
	<a href="#" onClick="location.href='setProduct.jsp'">뒤로가기</a>
	<!--이전화면으로 돌아가기.-->
</center>
</form>
</body>
</html>