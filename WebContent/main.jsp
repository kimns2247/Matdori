<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 형진아 jsp만들면 위에 꼭 UTF-8로 바꿔 -->
<h1>로그인된 메인임</h1>

<!-- <% %> 모든 페이지에 다 넣어줄것! -->

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



<h4><%=userID %>님 안녕하세요! 여긴 아이디가 나옵니다.여긴 메인1입니다.</h4>



<%-- 
<c:forEach var="vo1" items="${alist1}">
			<tr>
				<td>${vo1.id}</td>
				<td><a href="sawonSearchOne.do?name=${vo1.name }">${vo1.name }</a></td>
				<td>${vo1.tel}</td>
				<td>${vo1.d}</td>
			</tr>
		</c:forEach> --%>


<a href="mypage.do?userID=<%=userID%>">내정보보기</a>






<%
if(userID != null){ %>
   <a href="logout.jsp">로그아웃</a> <br><br><br>
<%  }%>



<a href = "main2.jsp">메인2이동</a>
<form action = "mdr_main.jsp">
<input type ="submit" value = "맛도리">
</form>
</body>
</html>