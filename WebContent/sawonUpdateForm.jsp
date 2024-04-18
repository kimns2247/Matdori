<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login.jsp");    // 로그인(즉, 세션이 살아있지 않으면 login1.jsp 창으로 보내버림)
}

String userID=(String)session.getAttribute("sessionID");
session.setAttribute("userID", userID);    // id값 가지고 넘어가는 세션

response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");     // 캐시날리는 코드(로그아웃 후 뒤로가기 방지)
response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
response.setDateHeader("Expires", 1L);              //응답결과의만료일지정

%>

<h1>사원 한명 보기</h1>
<form action="telUpdate.do?sname=${stv.name}" method="get">
	<!-- 저 아래서 submit을 누르면 서블릿(controll)으로 갈 때 검색한 한명의 이름을 가져간다.
	지금은 한명의 정보를 출력해야만 수정이나 삭제로 갈수있기때문에 출력을 해보자.  
	
	출력이 가능한 이유는 DAO를 통해 getinfo() 메소드로 여기 오기전 한사람의 정보를
	꺼내는 작업을 하고 여기로 옴.-->
<table border="1">
	<tr><td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td>
	<tr>
		<td><input type="text" value="${stv.id}" name="id"></td>
		<td><input type="text" value="${stv.name}" name="name"></td>
		<td><input type="text" value="${stv.password}" name="password"></td>
		<td><input type="text" value="${stv.birth}" name="birth"></td>
		<td><input type="text" value="${stv.gender}" name="gender"></td>
		<td><input type="text" value="${stv.email}" name="email"></td>
		<td><input type="text" value="${stv.address}" name="address"></td>
		
		<td><input type="hidden" value="${stv.name}" name="sname"></td>
		
	</tr>
	<tr>
		<td colspan="4">
			<input type="submit" value="수정">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>


</form><br>

<a href="${pageContext.request.contextPath}/getAllInfo.jsp">모두보기</a>
<!-- 절대경로 : pageContext.request.contextPath -->

<a href="telDelete.do?name=${stv.name}">삭제</a>
</body>
</html>