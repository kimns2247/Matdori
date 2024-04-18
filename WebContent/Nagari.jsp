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
    <meta name="author" content="Mark Otto, Jacob Thornton, �׸��� Bootstrap �⿩�ڵ�">
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
            width: 480px; /* ���̵�� �н����� �Է�â�� ���̸� �����մϴ�. */
            padding: 10px; /* �Է�â�� �е��� ������ �� �ֽ��ϴ�. */
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
            height: 10vh; /* �����ο� ���� �����ϼ��� */
   }
   
   u {
            color: black; /* �ؽ�Ʈ�� ���������� �����մϴ�. */
            text-decoration: underline red; /* ������ ���������� �߰��մϴ�. */
            font-weight: bold; /* �۾��� �β��� ���ϰ� �����մϴ�. */
            display: inline-block; /* �ζ��� ���� ��Ҹ� ��� ������ �����մϴ�. */
          
        }
        
         h3, h4 u {
            color: red; /* ���ǻ��� �κ� �۾��� ���������� �����մϴ�. */
        }
  
</style>


</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<%
  // ������ ������ ���°��, �ش��������� �� �� ���� ��.
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login1.jsp");
}

String userID=(String)session.getAttribute("sessionID");
session.setAttribute("userID", userID);

response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");
response.addHeader("Cache-Control", "no-store");    // �Ϻ����̾��������װ���
response.setDateHeader("Expires", 1L);              //�������Ǹ���������

%>

 <div class="text-center">
  <img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100">
 </div><br><br>

<body style="margin:50px 200px;" align="center">



<br><br>
<form action="UserDelete1.do?userID=<%=userID%>" method = "post">
<h1 align="center">"<%=userID%>" ���� Ż���������Դϴ�.</h1>
<br><br><br>
<div align="center">
<h4>����ϰ� ��� ���̵� <%=userID%>�� Ż���� ��� ������ �Ұ����մϴ�.</h4><br>

 <h3> ���ǻ��� </h3> <br>


<h4>�Ʒ��� ������ ��Ȯ�� �Է��ϼž� Ż��ó���˴ϴ�.<br>
Ż���Ŀ��� ���������� <u>��� �����Ǿ� ������ �Ұ���</u>�մϴ�.</h4><br>


 <div> 
<label for="terms"><input type="checkbox" name="agree" id="terms" value="terms"></label> �ش� ������ ��� Ȯ��������, ȸ��Ż�� �����մϴ�.

</div>

</div>


<div class="center-container">
<div class="bt1">
<button id="btn"  class="btn btn-primary w-100 py-2">Ż���ϱ�</button></div>
</div>


<script type = "text/javascript">

$('#btn').on('click', function(event){
   
   if($('#terms').is(':checked') == false) {
          Swal.fire({
                 icon: 'info',
                 title : 'üũ�ڽ��� �������ּ���!',
                 text : 'ȸ��Ż�� ���� ����� üũ�ڽ� Ȯ���� ��Ź�帳�ϴ�!',
              });
          event.preventDefault();
          return;
          
          }
});

</script>


</form>

</body>
</html>