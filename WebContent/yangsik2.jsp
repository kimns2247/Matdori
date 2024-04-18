<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head>
    <meta charset="utf-8">
    
    <script src="/docs/5.3/assets/js/color-modes.js"></script>

    

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.3/examples/pricing/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

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

   
   <!-- Link Swiper's CSS -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
   
   <link href="./css/content.css" rel="stylesheet" />
 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a1da59e16823a4dd81ad1ae6b1da0cb"></script>
    
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
    
     <style>
 
       #btn1{
       background-color:#ff3d00;
       width:740px;
       height: 40px;
       text-align:center;
       }
 
 </style>
  </head>
  <body>
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
    
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>
 
<body>

<div class="container py-3">

<div class="logo">
 <a href="index.jsp"><img src="matdori_logo2.jpg"></a>
</div><br>


 <div #swiperRef="" class="swiper mySwiper">
    <div class="swiper-wrapper">
      <img src="./yangsik/taco1.jpg"> &nbsp;&nbsp;&nbsp;
      <img src="./yangsik/taco2.jpg"> &nbsp;&nbsp;&nbsp;
      <img src="./yangsik/taco3.jpg"> &nbsp;&nbsp;&nbsp;
      <img src="./yangsik/taco4.jpg"> &nbsp;&nbsp;&nbsp;
      <img src="./yangsik/taco5.jpg">
      <div class="swiper-slide">slide 1</div>
      <div class="swiper-slide">Slide 2</div>
      <div class="swiper-slide">Slide 3</div>
    
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </div>

  <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 4,
      centeredSlides: true,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        type: "fraction",
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });

    var appendNumber = 4;
    var prependNumber = 1;
    document
      .querySelector(".prepend-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide([
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
        ]);
      });
    document
      .querySelector(".prepend-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide(
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>"
        );
      });
    document
      .querySelector(".append-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide(
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>"
        );
      });
    document
      .querySelector(".append-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide([
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
        ]);
      });
  </script>
  
  
    <div class="text-center">
      <div>
        <div class="card mb-4 rounded-3 shadow-sm" style="width: 100%;">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" align="left">타코 델리</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title pricing-card-title" align="left"><small class="text-body-secondary fw-light"></small>
               건강한 음식을 지향하는 곳으로    <br>
               지역 여행의 경험과 푸드트럭을 시작으로 바닥부터 닦은 실력을 발휘하는 레스토랑입니다.   <br>
               한국에서 가장 근본있는 멕시칸 음식점을 지향하는 곳으로 음식에 대한 연구를 멈추지 않아 손님들에게 인기입니다.   
          </div>
        </div>
      </div>
    </div> 
      
   <div class="text-center">  
      <div>
        <div class="card mb-4 rounded-3 shadow-sm" style="width: 100%;">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" align="left">가게정보</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title pricing-card-title" align="left"><small class="text-body-secondary fw-light"></small>
               주소 :  서울특별시 종로구 계동 73-7  <br>
            영업시간: 13:00 - 08:00  <br>
            전화번호: 02-7853-9632  <br>
            주차정보:  주차정보 없음  <br></h5>
          </div>
        </div>
      </div>
   </div>
      
  
    <div class="text-center">  
      <div>
        <div class="card mb-4 rounded-3 shadow-sm" style="width: 100%;">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" align="left">가게위치</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title pricing-card-title"><small class="text-body-secondary fw-light"></small></h5>
            
              <div id="map" style="width:100%;height:350px;"> 
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9026710843ec18407ad21d6dbcebc862&libraries=services"></script>
            <script>
         var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
         mapOption = { 
             center: new kakao.maps.LatLng(37.5657192, 126.9879906), // 지도의 중심좌표
             level: 3 // 지도의 확대 레벨
         };

         var map = new kakao.maps.Map(mapContainer, mapOption);

         //마커가 표시될 위치입니다 
         var markerPosition  = new kakao.maps.LatLng(37.5657192, 126.9879906); 

         //마커를 생성합니다
         var marker = new kakao.maps.Marker({
         position: markerPosition
         });

         //마커가 지도 위에 표시되도록 설정합니다
         marker.setMap(map);

         var iwContent = '<div style="width:150px;text-align:center;padding:6px 0;">타코 델리', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
         iwPosition = new kakao.maps.LatLng(37.5657192, 126.9879906); //인포윈도우 표시 위치입니다

         //인포윈도우를 생성합니다
         var infowindow = new kakao.maps.InfoWindow({
         position : iwPosition, 
         content : iwContent 
         });

         //마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
         infowindow.open(map, marker); 
         </script>
         
         </div>
          </div>
        </div>
      </div>
   </div>
   
   <div class="text-center">  
      <div>
        <div class="card mb-4 rounded-3 shadow-sm" style="width: 100%;">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" align="left">추천리뷰 <h6><a href = "bbs.jsp?boardID=3&pageNumber=1" style="float:right;" >리뷰 전체보기</a></h6></h4>
          </div>
          <div class="card-body">
            <h5 class="card-title pricing-card-title" align="left"><small class="text-body-secondary fw-light"></small>
                 <div #swiperRef="" class="swiper mySwiper2">
             <div class="swiper-wrapper">
                <img src="./yangsik/taco1.jpg"> &nbsp;&nbsp;&nbsp;
               <img src="./yangsik/taco2.jpg"> &nbsp;&nbsp;&nbsp;
               <img src="./yangsik/taco3.jpg"> &nbsp;&nbsp;&nbsp;
               <img src="./yangsik/taco4.jpg"> &nbsp;&nbsp;&nbsp;
               <img src="./yangsik/taco5.jpg">
               <div class="swiper-slide">slide 1</div>
               <div class="swiper-slide">Slide 2</div>
               <div class="swiper-slide">Slide 3</div>
             </div>
    
             <div class="swiper-button-next"></div>
             <div class="swiper-button-prev"></div>
             <div class="swiper-pagination"></div>
           </div></h5>
           
           <input type='button' class='btn2' name='btn2' value='리뷰작성' onclick="location.href='write.jsp?boardID=3'" style="float:right; width:200px;">
           
          </div>
        </div>
      </div>
   </div>  
<!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper2", {
      slidesPerView: 4,
      centeredSlides: true,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        type: "fraction",
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });

    var appendNumber = 4;
    var prependNumber = 1;
    document
      .querySelector(".prepend-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide([
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
        ]);
      });
    document
      .querySelector(".prepend-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide(
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>"
        );
      });
    document
      .querySelector(".append-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide(
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>"
        );
      });
    document
      .querySelector(".append-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide([
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
        ]);
      });
    

   function popup(){
        let options = "toolbar=no,scrollbars=no,resizable=yes,status=no,menubar=no,width=450, height=600, top=0,left=450";

        window.open("review.jsp","_blank", options);
      }
  </script>   
<!--  <div class="pgjaj02 pgjaj04" >
      <input type="button" id="reservbtn" onclick="location.href='reservation.jsp'" value="예약하기">
 </div>  --> 
 
 
 <div class="container">
    <div class="button-container">
       <input type="button" id="btn1" onclick="location.href='reservation.jsp'"value="예약하기">  
  </div>

        
 
<svg xmlns="http://www.w3.org/2000/svg" height="16" width="16" viewBox="0 0 512 512">
<!-- <path d="M313.4 32.9c26 5.2 42.9 30.5 37.7 56.5l-2.3 11.4c-5.3 26.7-15.1 52.1-28.8 75.2H464c26.5 0 48 21.5 48 48c0 18.5-10.5 34.6-25.9 42.6C497 275.4 504 288.9 504 304c0 23.4-16.8 42.9-38.9 47.1c4.4 7.3 6.9 15.8 6.9 24.9c0 21.3-13.9 39.4-33.1 45.6c.7 3.3 1.1 6.8 1.1 10.4c0 26.5-21.5 48-48 48H294.5c-19 0-37.5-5.6-53.3-16.1l-38.5-25.7C176 420.4 160 390.4 160 358.3V320 272 247.1c0-29.2 13.3-56.7 36-75l7.4-5.9c26.5-21.2 44.6-51 51.2-84.2l2.3-11.4c5.2-26 30.5-42.9 56.5-37.7zM32 192H96c17.7 0 32 14.3 32 32V448c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32V224c0-17.7 14.3-32 32-32z"/></svg>
 -->
<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> 

</body>
</html>