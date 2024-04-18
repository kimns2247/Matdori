<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Link Swiper's CSS -->

<style>

    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper {
      width: 100%;
      height: 100%;
    }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .swiper {
      width: 100%;
      height: 300px;
      margin: 20px auto;
    }

    .append-buttons {
      text-align: center;
      margin-top: 20px;
    }

    .append-buttons button {
      display: inline-block;
      cursor: pointer;
      border: 1px solid #007aff;
      color: #007aff;
      text-decoration: none;
      padding: 4px 10px;
      border-radius: 4px;
      margin: 0 10px;
      font-size: 13px;
    }
    
.pgjaj02 {
    margin:0px 400px;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 52px;
    border-radius: 4px;
    box-sizing: border-box;
    background-color: #ff3d00;
    color: var(--_1ltqxco3);
    font-size: var(--_1ltqxcov);
    font-weight: var(--_1ltqxco10);
    z-index:1000;
}

 .infobox{
 font-size: 20px;
}


#like{
      width: 50px;
      fill: #ddd;
}

#like.active{
      fill: red;
}

@font-face{
  font-family: "BMHANNAPro";
  src: url("fonts/BMHANNAPro.ttf");
}
   
body{
   font-family:"BMHANNAPro";
}
 
 #reservbtn{
    background-color: #ff3d00;
    border:0;
    font-family: 'NanumBarunGothicYetHangul';
    font-size: 20px;
    width: 150px;
    height: 40px;
}    

.bt{
	align:center
}
    
.infobox input[type="date"] {
    width: 160px;
    height: 30px;
    font-size: 20px;
}    

.infobox select[name="people1"] {
    width: 160px;
    height: 30px;
    font-size: 15px;
}

.infobox select[name="time1"] {
    width: 160px;
    height: 30px;
    font-size: 15px;
}
.userID{
	font-color:#eee;
}
    
    
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
</head>


<body style="margin:0px 400px;">


<%
		String userID = null;
		if(session.getAttribute("sessionID") != null){
			userID = (String) session.getAttribute("sessionID");
		}
		
		if (session.getAttribute("sessionID") == null) {
		    response.sendRedirect("login.jsp");    // 로그인(즉, 세션이 살아있지 않으면 login1.jsp 창으로 보내버림)
		}
		
%>
	
<div class="space"></div>
<br><br><br>

<div class="text-center" align="center">
<img src="./images/reservation.png">
</div><br>

<div id = "userID" align="center" style="color: #eee;"><%=userID%></div>
<h1 align="center"> 예약 페이지입니다</h1> 

<%-- <input type="hidden" id = "userID" value="<%=userID%>">
<h1 align="center"> 예약 페이지입니다</h1> --%>

<div class="space"></div>
<br><br><br>

<h2 class="infobox2">예약하기</h2>
 <div class="infobox" style="border:1px solid black; padding:10px;">
  <label for="date">예약 날짜를 선택하세요:
  <input type="date" name="date1" id="date1" max="2030-06-20" min="2000-06-05" value="2024-02-08">
 </label>
 

 <span style="float:right;">
 <select name="people1" > 
   <option value="" selected >예약 인원수 선택</option>
   <option value="1명" >1명</option>
   <option value="2명" >2명</option>
   <option value="3명" >3명</option>
   <option value="4명" >4명</option>
   <option value="5명" >5명</option>
   <option value="6명" >6명</option>
   <option value="7명" >7명</option>
   <option value="8명" >8명</option>
   <option value="9명" >9명</option>
   <option value="10명" >10명</option>
</select>

&nbsp;&nbsp;&nbsp;&nbsp;

 <select name="time1"> 
  <option value="" selected>예약 시간 선택</option>
  <option value="12:00 PM">12:00 PM</option>
  <option value="12:30 PM">12:30 PM</option>
  <option value="1:00 PM">1:00 PM</option>
  <option value="1:30 PM">1:30 PM</option>
  <option value="2:00 PM">2:00 PM</option>
  <option value="2:30 PM">2:30 PM</option>
  <option value="3:00 PM">3:00 PM</option>
  <option value="3:30 PM">3:30 PM</option>
  <option value="4:00 PM">4:00 PM</option>
  <option value="4:30 PM">4:30 PM</option>
  <option value="5:00 PM">5:00 PM</option>
  <option value="5:30 PM">5:30 PM</option>
  <option value="6:00 PM">6:00 PM</option>
  <option value="6:30 PM">6:30 PM</option>
  <option value="7:00 PM">7:00 PM</option>
  <option value="7:30 PM">7:30 PM</option>
  <option value="8:00 PM">8:00 PM</option>
  <option value="8:30 PM">8:30 PM</option>
  <option value="9:00 PM">9:00 PM</option>
</select>
</span>
 
 </div>

    <!-- PortOne SDK -->
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    
     <!-- jQueryAjax -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    
    <script>
      var IMP = window.IMP;
      IMP.init("imp70042172");
 
      function requestPay() {       
       //유효성 검사를 함(예약일자/예약시간/예약인원)
       //focus 유효성을 지키지 않은 값으로 포커스 이동
       //해당 값이 없으면 return으로 requestPay 함수를 종료시킴
       if($("[name=date1]").val() == null || $("[name=date1]").val() == ""){
          alert("예약 날짜를 선택하세요.");
          $("[name=date1]").focus();   
          return;
       }
       
      if($("[name=time1]").val() == null || $("[name=time1]").val() == ""){
         alert("예약 시간를 선택하세요.");
          $("[name=time1]").focus();
          return;
       }
      
      if($("[name=people1]").val() == null || $("[name=people1]").val() == ""){
         alert("예약 인원를 선택하세요.");
          $("[name=people1]").focus();
          return;
       }
       
       
         var randomMerchantUid = Math.random().toString(36).substring(2, 15) +
                                                       Math.random().toString(36).substring(2, 15); 
         var userID = document.getElementById("userID").innerText;
         
         IMP.request_pay(
                 {
                   pg: "kcp",
                   pay_method: "card",
                   merchant_uid: randomMerchantUid,
                   name: "스시우미",
                   amount: 100,
                   buyer_email: "songsu1111@naver.com",
                   buyer_name: userID,
                   buyer_tel: "010-1234-5678",
                   buyer_addr: "서울특별시 강남구 삼성동",
                   buyer_postcode: "123-456",

                 }, function (rsp) { // callback
                     if (rsp.success) {
                         // 결제 성공 시
                         console.log(rsp);
                          alert('결제에 성공하였습니다');
                          
                          setTimeout('move_page()', 1000);
                          
                         // axios로 HTTP 요청
                        jQuery.ajax({ /* 결과 값 저장 위한 호출 */    //이 부분을 jquery ajax로 변경해보기 
                           url: "http://localhost:8888/matdoriNew3/Mdrpurchase.do", /* 호출 url */
                           method: "post",
                          
                           data: {
                              
                              "name" : rsp.name
                             ,"merchant_uid" : rsp.merchant_uid
                             , "pg" : rsp.pg_provider
                             , "rsvDate" : $("[name=date1]").val()
                             , "rsvTime" : $("[name=time1]").val()
                             , "peopleCnt" : $("[name=people1]").val()
                             , "userID": rsp.buyer_name 
                             
                           }
                         }).then((data) => {
                           // 서버 결제 API 성공시 로직
                           console.log('서버 결제 API 호출 성공', data);
                         }).catch((error) => {
                           // 서버 결제 API 실패시 로직
                           console.error('서버 결제 API 호출 실패', error);
                         });
                     } else {
                         // 결제 실패 시
                         console.log(rsp);
                         alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
                     }
                     
                 });
             }
         
      function move_page(){
      location.href="purchasecomplete.jsp"  // 페이지 이동
      }
      
      
    </script>
 
 
<div class="space"></div><br><br>
<div class="space"></div><br>
 
 
<div class="bt" align="center">
 <form action="reservation.jsp">  <!-- .do: servlet으로 찾아가라는 의미  -->
      <input type="button" id="reservbtn" onclick="requestPay()" value="결제하기">
 </form>
</div>  


</body>
</html>