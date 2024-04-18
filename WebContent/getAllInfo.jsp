<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원전체보기 </title>
</head> 
<body>  <!-- getAllInfo.jsp입니다. -->
<h1>회원 목록 전체 보기</h1>
<hr><br>

<table border = 1>
<tr>
	<td colspan=4>
	<form action="getAllInfo.do"> <!-- .do는 이 파일을 servlet으로 작성했다는것을 의미.  -->
		<input type = "submit" value = "모두보기">
	</form>
	</td>
</tr>



<!-- 서블릿으로 갔다가 business.logic을 처리한 다음 다시 출발한 곳으로 온다.
      아래는 되돌아와서 출력하기 위한 부분 -->
<tr>
	<td>아이디</td>
	<td>이름</td>
	<td>비번</td>
	<td>생일</td>
	<td>성별</td>
	<td>이메일</td>
	<td>주소</td>
</tr>

<!-- <tr>
	<td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td>
</tr> -->

<c:forEach var = "vo1" items= "${alist1}">
<!-- request scope에 객체전체를 ArrayList alist1에 저장 -->
<!-- c:forEach를 이용해서 alist1에서 하나씩 뽑아내서 vo1에 저장한후 vo1.~~ 한개씩 출력. -->
<tr>
	<td>${vo1.id}</td>
	<td>${vo1.name}</td>
	<td>${vo1.password}</td>
	<td>${vo1.birth}</td>
	<td>${vo1.gender}</td>
	<td>${vo1.email}</td>
	<td>${vo1.address}</td>
	<td><a href="SawonSearchOne.do?name=${vo1.name}">정보 수정</a></td>
	<td><a href="telDelete.do?name=${vo1.name}">회원 삭제</a></td>
	<!-- 전체보기하면서 수정도 가능하게 하자. -->
</tr>
</c:forEach>

	<table border=0>
	<tr>
		<td><a href="sawonInsertForm.jsp">[입력]</a></td>
		<td><a href="getAllInfo.jsp">[모두보기]</a></td>
	
	</tr>
	</table>

</table>
</body>
</html>