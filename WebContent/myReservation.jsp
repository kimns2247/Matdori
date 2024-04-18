<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약 내역</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
    @font-face {
        font-family: "BMHANNAPro";
        src: url("fonts/BMHANNAPro.ttf");
    }
    body {
        font-family: "BMHANNAPro";
        background-color: #eeeeee;
        margin: 0;
        padding: 0;
    }
    .text-center {
        text-align: center;
    }
    .logo {
        width: 100px;
        height: 100px;
    }
    h1 {
        text-align: center;
    }
    .tb1 {
        font-size: 20px;
        text-align: center;
        margin: 0 auto; /* 가운데 정렬 */
    }
    .tb1 table {
        border-collapse: collapse;
        width: 100%;
    }
    .tb1 th, .tb1 td {
        border: 1px solid #dddddd;
        padding: 8px;
    }
    .tb1 th {
         background-color: #f2f2f2;
      
    }
    .s2 input[type="button"] {
        background-color: #ff3d00;
        height: 40px;
        padding: 5px 25px;
        border: none;
        border-radius: 3px;
        color: white;
        font-size: 18px;
       /*  font-weight: bold; 글자를 두껍게 만드는 것*/
        text-align: center;
    }
    @media (max-width: 768px) {
        .logo {
            width: 80px;
            height: 80px;
        }
        h1 {
            font-size: 24px;
        }
        .tb1 {
            font-size: 16px;
        }
        .s2 input[type="button"] {
          
            font-size: 14px;
        } 
    }
    

</style>
</head>
<body>
<%
String userID = null;
if(session.getAttribute("sessionID") != null){
    userID = (String) session.getAttribute("sessionID");
}
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login2.jsp"); // 세션이 살아있지 않으면 로그인 페이지로 이동
}
%>
<br><br><br>
<div class="text-center">
    <a href="index.jsp"><img class="logo" src="./images/matdori_logo.png" alt=""></a>
</div>
<br><br>
<h1><%=userID %> 님 예약 내역 페이지입니다</h1>
<div class="tb1">
    <table>
        <thead>
            <tr>
                <th>주문번호</th>
                <th>예약날짜</th>
                <th>예약시간</th>
                <th>예약인원수</th>
                <th>점포명</th>
                <th>예약자아이디</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="myRes" items="${myRes}">
                <tr>
                    <td><input type="text" value="${myRes.merchant_uid}" readonly name="uid"></td>
                    <td><input type="text" value="${myRes.rsv_date}" readonly name="date"></td>
                    <td><input type="text" value="${myRes.rsv_time}" readonly name="time"></td>
                    <td><input type="text" value="${myRes.people_cnt}" readonly name="people_cnt"></td>
                    <td><input type="text" value="${myRes.name}" readonly name="name"></td>
                    <td><input type="text" value="${myRes.id}" readonly name="id"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<br><br><br>
<!-- <div class="text-center">
    <input type="button" class="button" value="메인으로" onClick="location.href='index.jsp'">
</div> -->

 <div class="s2" align="center">
        <input type="button" class="button"value="메인으로" onClick="location.href='index.jsp'" >
   </div>
</body>
</html>