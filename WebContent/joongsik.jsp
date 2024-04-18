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
   
    .joongsikmain{
      width: 800px;
    } 
    
    .joongsikmain{
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
        
       <div class="mx-auto text-center"> 
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
       </div>
       
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



<div class="joongsikmain" style="width:100%;">
    <div>
        <form class="d-flex" role="search" action="SearchServlet.ser" method="get" style="position:absolute; top:400px; right:900px; z-index: 1;"> <!--  세현노트북 기준 -->
            <div class="input-group"> <!-- Added input-group for styling -->
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name="search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
        </form>
        <img src="./joongsik/joongsiksearch.jpg" style="position: relative; z-index: 0; width:1685px; height:580px;">
    </div>
</div>


  
<br><br>
<hr class="featurette-divider"><br><br>
  <div class="container marketing">
  
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
     <!--    <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
  		<title>Placeholder</title>
  		<rect width="100%" height="100%" fill="var(--bs-secondary-color)"/> 직사각형을 나타내는 요소
  			</svg> -->
  				<img src ="./joongsik/mara3.jpg" width="60%" height="280px">
		<br><br>
        <h2 class="fw-normal">탕화쿵푸</h2>
        <p> 한국인 입맛에 특화된 k-마라 의 원조 마라탕 집 탕화쿵푸.</p>
        <p><a class="btn btn-secondary" href="joongsik1.jsp"> 가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src="./joongsik/mara1.jpg" width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 마라천향</h2> <br>
        <p> 깊은 사골국물로 우려낸 정성들어간 마라탕 가게.</p>
        <p><a class="btn btn-secondary" href="joongsik2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src="./joongsik/ch5.jpg" width="60%" height="280px">
         <br><br>
        <h2 class="fw-normal"> 소각 </h2> <br>
        <p>고급진 중식메뉴를 프라이빗한 공간에서 즐길수있는 소중한 공간.</p>
       <p><a class="btn btn-secondary" href="joongsik3.jsp">가게 정보 >> </a></p>
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
  		<img src ="./joongsik/ch2.jpg"  width="60%" height="280px">
  		<br><br>
        <h2 class="fw-normal"> 탕수육 </h2>
        <p>탕수육을 전문으로 하고있는 탕수육 맛집입니다.</p>
        <p><a class="btn btn-secondary" href="joongsik2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./joongsik/ch4.jpg"  width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 신라반점 </h2>
        <p>수타면으로 면을 만들어 쫄깃하고 담백한 짜장면 전문집.</p>
        <p><a class="btn btn-secondary" href="joongsik3.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./joongsik/ch3.jpg"  width="60%" height="280px">
        <br><br>
        <h2 class="fw-normal"> 희래성</h2>
        <p> 짜장면을 시그니처 메뉴로 깔끔하고 매콤한 국물을 만들어 판매하고있습니다.</p>
        <p><a class="btn btn-secondary" href="joongsik1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    
   <hr class="featurette-divider"><br><br>
     <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
       <!--  <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
       <img src ="./joongsik/mara4.jpg" width="60%" height="280px">
		<br><br>
        <h2 class="fw-normal"> 태성관 </h2>
        <p> 중식만 15년째 맛없으면 돈안받습니다 많은 이용바람. </p>
        <p><a class="btn btn-secondary" href="joongsik3.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
       <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src ="./joongsik/joong1.jpg" width="60%" height="280px">
         <br><br>
         <h2 class="fw-normal">홍복성 </h2>
        <p> 호텔셰프가 따로나와 차린 중식맛집. </p>
        <p><a class="btn btn-secondary" href="joongsik2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
        <img src ="./joongsik/ch4.jpg" width="60%"  height="280px">
        <br><br>
         <h2 class="fw-normal">오구반점</h2>
        <p> 짬뽕에 가장 자신있는 친구들이 하는 중식집. </p>
        <p><a class="btn btn-secondary" href="joongsik1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    
    
   <hr class="featurette-divider"><br><br>
     <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
  		<img src ="./joongsik/ch1.jpg" width="60%" height="280px">
  		<br><br>
  		 <h2 class="fw-normal">만보성</h2>
        <p> 짜장과 볶음밥의 조화가 가장 어우러지는 맛집. </p>
        <p><a class="btn btn-secondary" href="joongsik1.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src ="./joongsik/mara1.jpg" width="60%" height="280px">
         <br><br>
         <h2 class="fw-normal">동해루</h2>
        <p> 중식에는 자신있는 부부가 하는 중식집입니다 많은 이용바랍니다.</p>
        <p><a class="btn btn-secondary" href="joongsik2.jsp">가게 정보 >></a></p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-4" align="center">
        <!-- <svg class="bd-placeholder-img rounded" width="220" height="230" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></svg> -->
         <img src ="./joongsik/mara2.jpg" width="60%" height="280px">
         <br><br>
         <h2 class="fw-normal">대륙</h2>
        <p> 종로에서 가장 짜장면이 맛있는 중식가게.</p>
        <p><a class="btn btn-secondary" href="joongsik3.jsp">가게 정보 >></a></p>
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


