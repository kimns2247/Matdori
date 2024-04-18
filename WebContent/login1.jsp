<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!doctype html>
<html lang="en" data-bs-theme="auto">
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


<style >
   
    input[type="text"], input[type="password"] {
           /*  width: 480px; 아이디와 패스워드 입력창의 넓이를 조절합니다. */
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
     width: 400px;
  }
  

  .bodyBack{       
     margin: 20px 550px;
     border: 1px solid #c0c0c4;/* 뒤에 네모라인 없애기 */
    padding: 20px
  }
  
  
  /* 데스크탑 화면 */
@media (min-width: 992px) {
  .bodyBack {
    margin: 20px auto;
    border: 1px solid #c0c0c4;
    padding: 20px;
    width: 50%;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
  }

  .btn.btn-primary.w-100.py-2 {
    width: 100%;
  }
  
  .button{
  	width: 100%;
  }
  
  
}

/* 태블릿 화면 */
@media (max-width: 991px) {
  .bodyBack {
    margin: 20px auto;
    border: 1px solid #c0c0c4;
    padding: 20px;
    width: 70%;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
  }

  .btn.btn-primary.w-100.py-2 {
    width: 100%;
  }
  
    .button{
  	width: 100%;
  }
  
}

/* 모바일 화면 */
@media (max-width: 767px) {
  .bodyBack {
    margin: 20px auto;
    border: 1px solid #c0c0c4;
    padding: 20px;
    width: 90%;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
  }

  .btn.btn-primary.w-100.py-2 {
    width: 100%;
  }
  
    .button{
  	width: 100%;
  }
  
}
  
   /* 사용자 정의 스타일 */
        @font-face {
            font-family: "BMHANNAPro";
            src: url("fonts/BMHANNAPro.ttf");
        }
        body {
            font-family: "BMHANNAPro";
            background-color: #f8f9fa;
        }
        .form-signin {
            width: 100%;
            max-width: 900px; /* 폼의 최대 너비를 설정합니다. */
            margin: 0 auto; /* 폼을 가운데 정렬합니다. */
            padding: 15px;
            background-color: #fff; /* 폼의 배경색을 흰색으로 설정합니다. */
            border-radius: 10px; /* 폼의 테두리를 둥글게 설정합니다. */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과를 추가합니다. */
        }
        .form-floating {
            margin-bottom: 20px; /* 입력 필드 사이의 간격을 설정합니다. */
        }
        .btn-primary {
            background-color: #ff3d00; /* 버튼의 배경색을 주황색으로 설정합니다. */
            border-color: #ff3d00; /* 버튼의 테두리 색상을 주황색으로 설정합니다. */
        }
        

/* 반응형 버튼 만들기 */ 
.container {
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
}

.button-container {
    margin-top: 20px;
}

.button {
	width: 450px;
    display: inline-block;
    padding: 10px 20px;
    margin: 5px;
    background-color: #ff3d00; 
    color: #ffffff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.button:hover {
     background-color: white;
     color: black;
     border: 2px solid #ff3d00;
}

 @media only screen and (max-width: 600px) {
    .button {
        display: block;
        width: 100%;
    }
}
          
   
</style>

    
<!-- Custom styles for this template -->
  <link href="sign-in.css" rel="stylesheet">
  </head>
  <!--  <body class="d-flex align-items-center py-4 bg-body-tertiary centered-container"  style="margin: 100px 600px;"> -->
   <body class="d-flex align-items-center py-4 bg-body-tertiary bodyBack">
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

<!-- <main class="form-signin w-100 m-auto btn-container">  -->
<main class="form-signin w-100 m-auto">

 <div class="text-center">
 <a href="index.jsp"><img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100"></a>
 </div><br><br>
  
<form action="UserLoginServlet3.di" method = "post" id = "login" name = "login">

<h4 class="h3 mb-3 fw-normal" id="info1" style="text-align: center;">아이디 또는 비밀번호가 틀렸습니다.<br>
  다시 입력바랍니다! </h4>

 <main class="form text-center">
    <div class="form-floating" style="display: inline-block; width: 450px;">
    <input type="text" class="form-control" id = "loginID" name = "loginID"  ><br>
    <label for="floatingInput"> 아이디 </label>
    </div>
    
    <div class="form-floating" style="display: inline-block; width: 450px;">
     <input type="password" class="form-control" id = "loginPassword" name = "loginPassword" style="font-family: auto;"> 
     <label for="floatingInput"> 비밀번호 </label> 
    </div>
    
</main>



<script type="text/javascript">
   $(function(){   
      $("#loginID, #loginPassword").on('input',function(){
          if($("#loginPassword").val()=='')
             $("#click_function").attr("disabled",true);
          else
             $("#click_function").attr("disabled",false);
      });
   })
</script>

 <br><br>
    
    
<div class="container">
    <div class="button-container">
        <button class="button">로그인하기</button>
        </form>
   </div>  
 </div>
 
 <div class="container">
    <div class="button-container">
        <button type="submit" class="button" onClick="location.href='findID.jsp'">아이디 찾기</button>
  </div>  
 </div>        
      
 <div class="container">
    <div class="button-container">       
         <button type="submit" class="button" onClick="location.href='findPW.jsp'">비밀번호 변경 </button>
   </div>  
 </div>
  
   <div class="container">
    <div class="button-container">  
        <form action = "userRegister.jsp"> 
          <button class="button" type="submit"> 회원가입 </button>
        </form>
      </div>  
    </div>
  
</main>
 </div>

<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</html>