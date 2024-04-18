<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


session.removeAttribute("sessionID"); //이게 있어야 로그아웃됨
%>
<script>
location.href = 'index.jsp';
</script>
</body>
</html>