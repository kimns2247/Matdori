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


    <!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
	<!-- <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9"> -->
	<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
	<!-- <meta name="theme-color" content="#712cf9">  -->


 <style>
 
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
    
    .hansikmain{
      width: 800px;
    } 
    
    .hansikmain{
    	position: relative;
    }
    
   .ftbar{
   	align:right;
   }
   
   .box {
	background-color: white;
    width: 120px;
    height: 120px; 
    overflow: hidden;
    border-radius:50%;
    border: none;
}

.profile {
    width: 100%;
    height: 100%;
   /*  object-fit: cover; */
}

.space{
width:30px;
height:auto;
display:inline-block;
}

.fcontainer{
	position:absolute;
	left:0;
}
.float-end{
	position:absolute;
	right:0;
}

.category-title {
   /*  position: absolute; */
  /*   bottom: -10px; */
    left: 0;
    right: 0;
    margin: auto;
   /*  margin-bottom: 30px; /* 원하는 여백 값으로 조절 가능합니다 */ 
   margin-top: 30px;
}
</style>

</head>
  
  
<body style="margin: 30px 200px;"><!--  style="margin: 0px 200px;" -->

<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
  
     <%
		String userID = null;
		if(session.getAttribute("sessionID") != null){
			userID = (String) session.getAttribute("sessionID");
		}
	%>
	
  
 <header data-bs-theme="dark">
  <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top" data-bs-theme="dark">
    <div class="container-fluid" align="center">
      <a class="navbar-brand" href="index.jsp" ><img src="./images/matdori_logo.png" width="33" height="33"> 맛도리</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="mx-auto text-center"> <!-- Added mx-auto and text-center classes here -->
          <form class="d-flex" role="search" action = "SearchServlet.ser" method = "get">
            <div class="input-group"> <!-- Added input-group for styling -->
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name="search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
          </form>
        </div>
        
        
       <%
				if(userID == null){		//로그인이 되어있지 않은 경우
       %> 
       
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
            <a class="nav-link" href="myReservation.do?userID=<%=userID%>">예약내역</a>
          </li>
        </ul>
        
        <%
				}
		%>
        
      </div>
    </div>
  </nav>
</header>


<br><br>


<!-- 캐러셀 반응형웹 부분 -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./images/main_adv1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./images/main_adv2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./images/main_adv3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<br><br>

<!-- 메뉴 종류 아이콘부분 -->

<br>
<div class="container-fluid">
    <div class="row justify-content-center">
   
        <div class="col-lg-2 col-md-4 col-sm-6 mb-4">
          <div style="position: relative; text-align: center;">
            <button type="button" class="box" onclick="location.href='hansik.jsp'">
                <img class="profile" src="./hansik/hansikcategory2.png" width="200px" height="200px">
               
            </button>
            <h3 class="category-title" style="position: absolute; top:150px; bottom: -30px; left: 0; right: 0; margin: auto;">한식</h3>
   		   </div>
        </div>
        
        <div class="col-lg-2 col-md-4 col-sm-6 mb-4">
         <div style="position: relative; text-align: center;">
            <button type="button" class="box" onclick="location.href='joongsik.jsp'">
                <img class="profile" src="./joongsik/joongsikcategory2.png" width="200px" height="200px">
            </button>
            <br>
           <h3 class="category-title" style="position: absolute; top:150px; bottom: -30px; left: 0; right: 0; margin: auto;">중식</h3>
   		 </div>
        </div>
        
        <div class="col-lg-2 col-md-4 col-sm-6 mb-4">
          <div style="position: relative; text-align: center;">
            <button type="button" class="box" onclick="location.href='yangsik.jsp'">
                <img class="profile" src="./yangsik/yangsikcategory2.png" width="200px" height="200px">
            </button>
            <br>
            <h3 class="category-title" style="position: absolute; top:150px; bottom: -30px; left: 0; right: 0; margin: auto;">양식</h3>
        </div>
       </div>
        
        <div class="col-lg-2 col-md-4 col-sm-6 mb-4">
         <div style="position: relative; text-align: center;">
            <button type="button" class="box" onclick="location.href='ilsik.jsp'">
                <img class="profile" src="./japan/ilsikcategory.png" width="200px" height="200px">
            </button>
            <br>
           <h3 class="category-title" style="position: absolute; top:150px; bottom: -30px; left: 0; right: 0; margin: auto;">일식</h3>
         </div>
       </div>
         
        <div class="col-lg-2 col-md-4 col-sm-6 mb-4">
         <div style="position: relative; text-align: center;">
            <button type="button" class="box" onclick="location.href='dessert.jsp'">
                <img class="profile" src="./dessert/dessertcategory.png" width="200px" height="200px">
            </button>
            <br>
            <h3 class="category-title" style="position: absolute; top:150px; bottom: -30px; left: 0; right: 0; margin: auto;">디저트</h3>
        </div>
       </div>
        
    </div>
</div>





<br><br><br><br><br><br>

<!-- line1 - START THE FEATURETTES -->
<!-- top3부분 -->
<!-- 한식 -->
<h3 align="left"> 한식 TOP3 </h3>  
   <div class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
  		<a href="hansik1.jsp"><img src ="./hansik/course1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">뜻한바</h2>
        <p>퓨전 한식 코스 다이닝</p>
      </div>
      
      <div class="col-lg-4" align="center">
  		<a href="hansik2.jsp"><img src ="./hansik/bob1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">온솥</h2>
        <p>솥밥 전문점</p>
      </div>
      
     <div class="col-lg-4" align="center">
  		<a href="hansik3.jsp"><img src ="./hansik/joojum1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">힙한식</h2>
        <p>한식 주점</p>
      </div>  
    </div>
     
<div class="space"></div>
<br><br><br>


<!-- 중식 -->   
<h3 align="left"> 중식 TOP3 </h3>  
   <div class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
  		<a href="joongsik1.jsp"><img src ="./joongsik/ch1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">신천 마라샹궈</h2>
        <p>훠궈 & 마라샹궈 맛집</p>
      </div>
      
      <div class="col-lg-4" align="center">
  		<a href="joongsik2.jsp"><img src ="joong1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">하선생</h2>
        <p>중식집</p>
      </div>
      
     <div class="col-lg-4" align="center">
  		<a href="joongsik3.jsp"><img src ="mara1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">훠훠 마라탕</h2>
        <p>마라탕</p>
      </div>  
    </div>
     
<div class="space"></div>
<br><br><br>   


<!-- 양식 -->
<h3 align="left"> 양식 TOP3 </h3>  
   <div class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
  		<a href="yangsik1.jsp"><img src ="yangsik1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">스테이크 하우스</h2>
        <p>이탈리안 레스토랑</p>
      </div>
      
      <div class="col-lg-4" align="center">
  		<a href="yangsik2.jsp"><img src ="./yangsik/taco1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">타코 델리</h2>
        <p>멕시칸 식당</p>
      </div>
      
     <div class="col-lg-4" align="center">
  		<a href="yangsik3.jsp"><img src ="./yangsik/hamburger1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">밤가시 버거</h2>
        <p>수제 버거집</p>
      </div>  
    </div>
     
<div class="space"></div>
<br><br><br> 



<!-- 일식 -->
<h3 align="left"> 일식 TOP3 </h3>  
   <div class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
  		<a href="ilsik1.jsp"><img src ="./japan/japan1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">해목</h2>
        <p>일식당</p>
      </div>
      
      <div class="col-lg-4" align="center">
  		<a href="ilsik2.jsp"><img src ="./japan/sushi1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">스시우미</h2>
        <p>스시</p>
      </div>
      
     <div class="col-lg-4" align="center">
  		<a href="ilsik3.jsp"><img src ="./japan/iza1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">로바타아키</h2>
        <p>이자카야</p>
      </div>  
    </div>
     
<div class="space"></div>
<br><br><br> 


<!-- 디저트 -->
<h3 align="left"> 디저트 TOP3 </h3>  
   <div class="featurette-divider"><br><br>
    <div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" align="center">
  		<a href="dessert1.jsp"><img src ="./dessert/brunch1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">히포 브런치</h2>
        <p>브런치</p>
      </div>
      
      <div class="col-lg-4" align="center">
  		<a href="dessert2.jsp"><img src ="./dessert/bagel0.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal">런던 베이글</h2>
        <p>베이글</p>
      </div>
      
     <div class="col-lg-4" align="center">
  		<a href="dessert3.jsp"><img src ="./dessert/cafe1.jpg" width="80%" height="450px"></a>
  		<br><br>
        <h2 class="fw-normal"> 카페 하운트</h2>
        <p> 카페</p>
      </div>  
    </div>
     
<div class="space"></div>
<br><br><br> 



</body>

  <!-- FOOTER -->
  
  <p class="float-end"><a href="#"><img src="./images/arrow.png"></a></p>
  
  <br><br>
  
  
  <footer data-bs-theme="dark" class="fcontainer" style="margin:0px;"> 
   <div class="container-fluid">
    
  
    	<h6 class="colored-text">(주)맛도리<br>
    	대표:최영훈 | 주소:서울시 종로구 | 전화번호: 02-123-4567<br>
    	팩스: 02-987-6543 | 이메일: matdori@matdori.com <br>
    	</h6>
    	<br>
     <p><a href="security.jsp">개인정보처리방침</a> | <a href="footer3.jsp">서비스 이용약관</a> | <a href="wichi.jsp">위치정보 이용약관</a></p>	
   </div>
  </footer>
  

	<!-- <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> 
</html>


