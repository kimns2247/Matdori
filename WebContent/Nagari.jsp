<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<script src="./js/jquery-3.7.1.min.js"></script>
 <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.115.4">

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/sign-in/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


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
  }
  .bt1{
     width:200px;
  }
  
  .center-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 10vh; /* 디자인에 따라 조절하세요 */
   }
   
   u {
            color: black; /* 텍스트를 검은색으로 설정합니다. */
            text-decoration: underline red; /* 밑줄을 빨간색으로 추가합니다. */
            font-weight: bold; /* 글씨를 두껍고 진하게 설정합니다. */
            display: inline-block; /* 인라인 레벨 요소를 블록 레벨로 변경합니다. */
          
        }
        
         h3, h4 u {
            color: red; /* 주의사항 부분 글씨를 빨간색으로 설정합니다. */
        }
  
</style>


</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<%
  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login1.jsp");
}

String userID=(String)session.getAttribute("sessionID");
session.setAttribute("userID", userID);

response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");
response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
response.setDateHeader("Expires", 1L);              //응답결과의만료일지정

%>

 <div class="text-center">
  <img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100">
 </div><br><br>

<body style="margin:50px 200px;" align="center">



<br><br>
<form action="UserDelete1.do?userID=<%=userID%>" method = "post">
<h1 align="center">"<%=userID%>" 님의 탈퇴페이지입니다.</h1>
<br><br><br>
<div align="center">
<h4>사용하고 계신 아이디 <%=userID%>는 탈퇴할 경우 복구가 불가능합니다.</h4><br>

 <h3> 주의사항 </h3> <br>


<h4>아래의 정보를 정확히 입력하셔야 탈퇴처리됩니다.<br>
탈퇴후에는 개인정보가 <u>모두 삭제되어 복구가 불가능</u>합니다.</h4><br>


 <div> 
<label for="terms"><input type="checkbox" name="agree" id="terms" value="terms"></label> 해당 내용을 모두 확인했으며, 회원탈퇴에 동의합니다.

</div>

</div>


<div class="center-container">
<div class="bt1">
<button id="btn"  class="btn btn-primary w-100 py-2">탈퇴하기</button></div>
</div>


<script type = "text/javascript">

$('#btn').on('click', function(event){
   
   if($('#terms').is(':checked') == false) {
          Swal.fire({
                 icon: 'info',
                 title : '체크박스를 선택해주세요!',
                 text : '회원탈퇴를 위해 내용과 체크박스 확인을 부탁드립니다!',
              });
          event.preventDefault();
          return;
          
          }
});

</script>


</form>

</body>
</html>