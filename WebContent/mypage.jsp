<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="/docs/5.3/assets/js/color-modes.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<style>

    input[type="text"], input[type="password"] {
            width: 480px; /* 아이디와 패스워드 입력창의 넓이를 조절합니다. */
            padding: 10px; /* 입력창의 패딩을 조절할 수 있습니다. */
        }
    
    @font-face{
     font-family: "BMHANNAPro";
     src: url("fonts/BMHANNAPro.ttf");
   }
   
   body{
     font-family:"BMHANNAPro";
   }
   
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

     @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

     .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      
     .bd-mode-toggle {
        z-index: 1500;
      }
      
     .btn.btn-primary.w-100.py-2 {
     background-color: #ff3d00;
     border-color: #ff3d00;
     width: 200px;
  }
  
  .bt1{
  width: 400px;
  }
  
  
    table{
    height: 300px;
    width: 900px;
    border-top: 3px solid black;
    margin-right: auto;
    margin-left: auto;
    }
    
    tr{
    border-bottom: 1px dotted black;
    }
    
    td{
    border-bottom: 1px dotted black;
    }
 
    caption{
    text-align: left;
    }
 
    .col1 {
       background-color: #e8e8e8;
       padding: 10px;
       text-align: right;
       font-weight: bold;
       font-size: 0.8em;
       text-align:center;
    }
 
    .col2 {
       text-align: left;
       padding: 5px;
    }
    
    input[type="text"], input[type="password"] {
        width: 100%; /* 텍스트 입력 필드를 꽉 차게 */
        padding: 10px;
        margin-bottom: 10px; /* 여백 추가 */
    }
    
    /* 모바일용 스타일 */
    @media (max-width: 767px) {
        /* 모바일에서 필요한 추가 스타일 */
        body {
            margin: 10px; /* 여백 추가 */
        }
        
        .bt1 {
            width: 100%; /* 버튼을 꽉 차게 */
        }
    }
    
    /* 테블릿 및 PC용 스타일 */
    @media (min-width: 768px) {
        /* 테블릿 및 PC에서 필요한 추가 스타일 */
        body {
            margin: 50px 200px; /* 여백 조절 */
        }
        
        .bt1 {
            width: 400px; /* 버튼 너비 고정 */
            margin: 50px auto; /* 중앙 정렬 */
        }
    }

    /* 공통 스타일 */
    .logo {
        display: block; /* 로고를 중앙 정렬하기 위해 */
        margin: 0 auto 20px; /* 로고 아래 여백 추가 */
    }
    
    
    
</style>

</head>
<body>

<%
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login.jsp");
}

String userID = (String) session.getAttribute("sessionID");
session.setAttribute("userID", userID);

response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");
response.addHeader("Cache-Control", "no-store");
response.setDateHeader("Expires", 1L);
%>

<div class="text-center">
    <a href="index.jsp"><img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100"></a>
</div> 
 
<div class="space"></div>

<h1 align="center">"${fid.name}"님의 마이페이지입니다.</h1>

<br>

<table align="center">
    <colgroup>
        <col width="200px"/>
        <col width="*"/>
    </colgroup>
    
    <tr>
        <th class="col1">아이디</th>
        <td class="col2"><c:out value="${fid.id}" /></td>
    </tr>
    
    <tr>
        <th class="col1">이름</th>
        <td class="col2"><c:out value="${fid.name}" /></td>
    </tr>
    
    <tr>
         <th class="col1">생년월일</th>
         <td class="col2"><c:out value="${fid.birth}" /></td>
     </tr>    
     
     <tr>
         <th class="col1">성별</th>
         <td class="col2"><c:out value="${fid.gender}" /></td>
     </tr>  
     
     <tr>
         <th class="col1">이메일</th>
         <td class="col2"><c:out value="${fid.email}" /></td>
     </tr> 
      
    <tr>
        <th class="col1">주소</th>
        <td class="col2">
            <c:out value="${fid.address1}" />
            <c:out value="${fid.address2}" />
            <c:out value="${fid.address3}" />
            <c:out value="${fid.address4}" />
        </td>
    </tr>
    
</table>
<br><br>
<div class="bt1">
    <a href="userUpdate.do?userID=<%=userID%>"><button type="submit" class="btn btn-primary w-100 py-2">정보수정</button></a><br><br>
    <a href="index.jsp"><button type="submit" class="btn btn-primary w-100 py-2">뒤로가기</button></a><br><br>
    <a href="Nagari.jsp"><button type="submit" class="btn btn-primary w-100 py-2">회원탈퇴</button></a><br><br>
</div>

</body>
</html>