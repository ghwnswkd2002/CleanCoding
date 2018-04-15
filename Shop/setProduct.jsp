<%@page import="javafx.scene.control.Alert"%>
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
<center>
<form action="add.jsp" method="post">


<%
if( request.getParameter("ID") == ""){
    out.println("<script>alert('아이디를 입력해주세요!')</script>");
    out.println("<script>history.back();</script>");
    
}/*만약 ID가 ""(공백)이라면 알림창을 띄우고 전 페이지로 돌아간다.*/
else{ 

if(request.getParameter("ID") != null){ //다른 창에서 이 창으로 돌아왔을 때 ID가 공백이 아니면 
    //세션 애트리뷰트를 셋해준다.
    session.setAttribute("login", request.getParameter("ID"));
}


%>
<h1>상품선택</h1>
<hr  style="border: ridge 5px green;">
<h3> <%= session.getAttribute("login")%>님이 로그인 한 상태입니다</h3>
<hr style="border: outset 10px red;">
<select name="product">
<option value = "BreadCrumbs">BreadCrumbs</option>
<option value = "BusinessContinutiyPlanning">BusinessContinutiyPlanning</option>
<option value = "BalancedScoreCard">BalancedScoreCard</option>
<option value = "웜">웜</option>
<option value = "살라미">살라미</option>
</select>
<input type="submit" value="추가"><!--정보를 넘겨준다.-->
<input type="button" onclick="location.href='login.jsp'" value="로그아웃"> <!--로그인화면으로 돌아간다-->
<br>
<br>
<a href="checkOut.jsp">계산</a>
</form>
</center><% 
}%>
</body>
</html>