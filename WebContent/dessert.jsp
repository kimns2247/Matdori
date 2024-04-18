<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr" data-bs-theme="auto">
  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

	<!-- <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> -->

    <!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
	<!-- <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9"> -->
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
	<!-- <meta name="theme-color" content="#712cf9">  -->


    <style>
  
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
        fill:currentColor; 
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

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
      
      .footer{
      	/* position:fixed; */
      	bottom:0;
      	width:100%;
      }
       .colored-text{
       	color:black;
       	
       }
       
       .size-text{
       	align:center;
       }
       
    @font-face{
  	font-family: "BMHANNAPro";
  	src: url("fonts/BMHANNAPro.ttf");
	}
	
	body{
	font-family:"BMHANNAPro";
   }
   
   
    .dessertmain{
      width: 800px;
    } 
    
    .dessertmain{
    	position: relative;
    }
    
   .ftbar{
   	align:right;
       
    </style>

    
    <!-- Custom styles for this template -->
   <link href="carousel.css" rel="stylesheet">
 </head>
  
 <body><!--  style="margin: 0px 200px;" -->
 
    <%
		String userID = null;
		if(session.getAttribute("sessionID") != null){
			userID = (String) session.getAttribute("sessionID");
		}
	%>
	
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


<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp"><img src="./images/matdori_logo.png" width="30" height="30"> 맛도리</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
       
       <%
				if(userID == null){		//로그인이 되어있지 않은 경우
       %> 
      
      
      
      <div class="collapse navbar-collapse" id="navbarCollapse">
       <div class="ms-auto">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="userRegister.jsp">회원가입</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cscenter.jsp">고객센터</a>
          </li>
        </ul>
        
           
          <% 
			} else {  //로그인 되어있는 경우 우측 상단 로그인/회원가입 토글이 찜목록/로그아웃 토글로 변경
		  %>
     
         <ul class="navbar-nav">
          <li class="nav-item">
           <a class="nav-link"><%=userID%>님 안녕하세요!</a> 
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logout.jsp">로그아웃</a>
          </li>
          <li class="nav-item">
           <a class="nav-link" href="mypage.do?userID=<%=userID%>">마이페이지</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cscenter.jsp">고객센터</a>
          </li>
        </ul>
        
        <%
				}
		%>
        </div>
        
       
         
      </div>
    </div>
  </nav>
</header>

<br><br>

<main>




<div class="dessertmain" style="width:100%;">
    <div>
        <form class="d-flex" role="search" action="SearchServlet.ser" method="get" style="position:absolute; top:400px; right:900px; z-index: 1;"> <!--  세현노트북 기준 -->
            <div class="input-group"> <!-- Added input-group for styling -->
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name="search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
        </form>
        <img src="./dessert/dessertsearch.jpg" style="position: relative; z-index: 0; width:1685px; height:580px;">
    </div>
</div>


  
<br><br>
<hr class="featurette-divider"><br><br>
  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
    
  				<img src ="./dessert/cafe6.jpg" width="60%" height="280px">
		<br><br>
        <h2 class="fw-normal">카페 레이어드 </h2>
        <p> 서울에서 가장 자신있는 스콘 베이커리 전문가게. </p>
        <p><a class="btn btn-secondary" href="dessert1.jsp"> 가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src="./dessert/cafe3.jpg" width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 카페 하이웨스트</h2> <br>
        <p> 산미없는 커피와 맛있는 디저트가 있는 베이커리집. </p>
        <p><a class="btn btn-secondary" href="dessert2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src="./dessert/cafe2.jpg" width="60%" height="280px">
         <br><br>
        <h2 class="fw-normal"> 헤리티지 클럽 </h2> <br>
        <p>감각적인 인테리어와 디저트를 함께 느낄수있도록 노력했습니다. </p>
       <p><a class="btn btn-secondary" href="dessert3.jsp">가게 정보 >> </a></p>
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

   <hr class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
  		<title>Placeholder</title>
  		<rect width="220" height="230">   </svg> --> 
  		<img src ="./dessert/bagel0.jpg"  width="60%" height="280px">
  		<br><br>
        <h2 class="fw-normal"> 런던 베이글 </h2>
        <p>서울에서 지금 가장 핫플인 장소. </p>
        <p><a class="btn btn-secondary" href="dessert2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./dessert/bagel1.jpg"  width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 코끼리 베이글 </h2>
        <p> 코끼리 처럼 크림을 많이 넣어드립니다. </p>
        <p><a class="btn btn-secondary" href="dessert3.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./dessert/brunch2.jpg"  width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 티타임</h2>
        <p>브런치 타임을 온전히 여유롭게 가져보는 시간. </p>
        <p><a class="btn btn-secondary" href="dessert1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    
   <hr class="featurette-divider"><br><br>
     <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
       <!--  <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
       <img src ="./dessert/brunch4.jpg" width="60%" height="280px">
		<br><br>
        <h2 class="fw-normal"> 퍼블릭 가든 </h2>
        <p> 영국식 브런치를 그대로 만들어내 가장똑같은 맛을 만들어냅니다. </p>
        <p><a class="btn btn-secondary" href="dessert3.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
       <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src ="./dessert/brunch1.jpg" width="60%" height="280px">
         <br><br>
         <h2 class="fw-normal"> 카페 포엠 </h2>
        <p> 조용한 공간에서 소중한 사람과 즐길수있는 브런치카페. </p>
        <p><a class="btn btn-secondary" href="dessert2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./dessert/cafe5.jpg" width="60%" height="280px">
        <br><br>
         <h2 class="fw-normal"> 카페 오디너리 </h2>
        <p> 가장 기본을 중시하는 카페 맛과 정성 그대로.  </p>
        <p><a class="btn btn-secondary" href="dessert1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    
    
   <hr class="featurette-divider"><br><br>
     <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
  		<img src ="./dessert/cafe6.jpg" width="60%" height="280px">
		<br><br>
        <h2 class="fw-normal">카페 레이어드 </h2>
        <p> 서울에서 가장 자신있는 스콘 베이커리 전문가게. </p>
        <p><a class="btn btn-secondary" href="dessert1.jsp"> 가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
           <img src="./dessert/cafe2.jpg" width="60%" height="280px">
         <br><br>
        <h2 class="fw-normal"> 헤리티지 클럽 </h2> <br>
        <p>감각적인 인테리어와 디저트를 함께 느낄수있도록 노력했습니다. </p>
       <p><a class="btn btn-secondary" href="dessert1.jsp">가게 정보 >> </a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./dessert/bagel0.jpg"  width="60%" height="280px">
  		<br><br>
        <h2 class="fw-normal"> 런던 베이글 </h2>
        <p>서울에서 지금 가장 핫플인 장소. </p>
        <p><a class="btn btn-secondary" href="dessert1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

  <br><br><br><br>
  
	</main>
</body>

  <!-- FOOTER -->
  <br><br>
  <footer data-bs-theme="dark" class="fcontainer" style="margin:0px;"> 
   <div class="container-fluid">
    <p class="float-end"><a href="#"><img src="./images/arrow.png"></a></p>
  
    	<h6 class="colored-text">(주)맛도리<br>
    	대표:최영훈 | 주소:서울시 종로구 | 전화번호: 02-123-4567<br>
    	팩스: 02-987-6543 | 이메일: matdori@matdori.com <br>
    	</h6>
    	<br>
     <p><a href="#">개인정보처리방침</a> | <a href="#">서비스 이용약관</a> | <a href="#">위치정보 이용약관</a> | <a href="#">입점문의</a> | <a href="#">광고/제휴 문의</a> </p>	
   </div>
  </footer>
  

	<!-- <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> 
</html>


