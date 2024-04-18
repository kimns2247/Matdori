<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <meta name="theme-color" content="#712cf9">
      
      <script src="./js/jquery-3.7.1.min.js"></script>
      
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      
      <script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script> 
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
      
      
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
         
            div.container{
          }
       
            div.insert{
          }
       
          div.create{
          width: 800px;
          text-align: center;
          padding: 30px;
          border-bottom: 1px solid black;
          margin: auto;
          }
       
          table{
          height: 300px;
          width: 900px;
          border-top: 3px solid black;
          margin-right: auto;
          margin-left: auto;
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
          }
       
          .col2 {
          text-align: left;
          padding: 5px;
          }
         
          p{
          font-size: 0.7em;
          }
       
          .g{
          font-size: 0.7em;
          }
       
          .c{
          font-size: 0.7em;
          }
       
          .a{
          font-size: 0.7em;
          }
          
          .num{
          color: red;
          }
          
          .col1 {
             text-align:center;
          }
         
         
         
           /* 기본 스타일 */
         table {
             width: 100%;
             border-collapse: collapse;
             margin: 0 auto;
             margin-top: 20px;
             max-width: 900px;
         }
         
         td {
             border: 1px solid #ddd;
             padding: 8px;
         }
         
         /* 반응형 스타일 */
         @media only screen and (max-width: 600px) {
             table {
                 width: 90%;
                 margin-top: 10px;
             }
             
             td {
                 font-size: 12px;
                 padding: 6px;
             }
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
         
          .responsive-img {
                     display: block;
                     margin: 0 auto;
                     max-width: 100%; /* 이미지의 최대 너비를 화면 크기에 맞추기 */
                    /*  height: auto; */
                    height:65px;
                    weight:65px;
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
    
    
             
      </style>
   
   
   
   
   </head>
<body>

<%
  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
if (session.getAttribute("sessionID") == null) {
    response.sendRedirect("login1.jsp");    // 로그인(즉, 세션이 살아있지 않으면 login1.jsp 창으로 보내버림)
}

String userID=(String)session.getAttribute("sessionID");
session.setAttribute("userID", userID);    // id값 가지고 넘어가는 세션

response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");     // 캐시날리는 코드(로그아웃 후 뒤로가기 방지)
response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
response.setDateHeader("Expires", 1L);              //응답결과의만료일지정

%>

<!-- 로고 이미지 -->
<!--   <div class="logo" align="center">
        <a href="index.jsp">
            <img class="responsive-img" src="./images/matdori_logo.png" alt="맛도리 로고">
        </a>
  </div> -->
  
  
 <div class="text-center">
    <a href="index.jsp"><img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100"></a>
</div> 
   
   
<div class="space"></div>

<h1 align="center">"${fid.name}"님의 정보수정 페이지입니다.</h1>

<br>
   

<form action="telUpdate.do?id=${fid.id}" method="post">
   <input type="hidden" value="${fid.salt}" name="salt">
   <input type="hidden" value="${fid.password}" name="password">


   <table>
      <colgroup>
         <col width="200px"/>
         <col width="*"/>
      </colgroup>
   
       <tr>
           <th class="col1">아이디</th>
           <td class="col2">
               <c:out value="${fid.id}" />
               <input type="hidden" name="id" value="${fid.id}" />
           </td>
       </tr>
       
       <tr>
           <th class="col1">이름</th>
           <td class="col2"><input type="text" value="${fid.name}"  name="name" onkeypress = "checkName()" style="width:210px"></td>
       </tr>
       
       <tr>
           <th class="col1">생년월일</th>
            <td class="col2">
               <c:out value="${fid.birth}" />
               <input type="hidden" name="birth" value="${fid.birth}" />
            </td>
        </tr>    
        
        <tr>
           <th class="col1">성별</th>
            <td class="col2">
              <input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "남성" <c:out value="${fid.gender eq '남성' ? 'checked' : ''}" />>남성
            <input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "여성" <c:out value="${fid.gender eq '여성' ? 'checked' : ''}" />>여성
            </td>
        </tr>  
        
        <tr>
           <th class="col1">이메일</th>
            <td class="col2">
               <c:out value="${fid.email}" />
               <input type="hidden" name="email" value="${fid.email}" />
            </td>
        </tr> 
        
      <tr>
          <td class="col1">주소</td>
          <td class="col2">
            <input type="text" name="address1" id='sample6_postcode' value="${fid.address1}" style="width:15%" readonly />  
            <input type="text" name="address2" id='sample6_address' value="${fid.address2}" style="width:65%" readonly />
            <input type="button" value="우편번호찾기" onclick="sample6_execDaumPostcode()">  
          </td>
      </tr>
      <tr>
           <td class="col1">상세주소</td>
           <td class="col2">
              <input type="text" name="address3" id='sample6_extraAddress' value="${fid.address3}" style="width:15%" readonly />
              <input type="text" name="address4" id='sample6_detailAddress' value="${fid.address4}" style="width:70%" placeholder = "동 호수 입력">
           </td>
      </tr>
   </table>
   
   
      <div class="container">
         <div class="button-container">
             <button id="updateBtn" class ="button" >변경</button> 
             <input type="button" class ="button" value="뒤로가기" onClick="location.href='main.jsp.jsp'">  
           </div>
        </div>
  

</form>

 <script type = "text/javascript">
    $('#updateBtn').on('click', function(event){
        if($('#name').val() == '') {
   
            Swal.fire({
               icon: 'info',
               title : '이름을 확인해주세요!',
               text : '이름은 필수입력사항입니다.',
            });
           event.preventDefault();
           return;
        }
        

        
         if($('#sample6_postcode').val() == '') {
            Swal.fire({
                   icon: 'info',
                   title : '주소를 확인해주세요!',
                   text : '주소는 필수입력사항입니다',
                });
            event.preventDefault();
            return;
         }
        
         
         if($('#sample6_detailAddress').val() == '') {
            Swal.fire({
                   icon: 'info',
                   title : '상세주소를 확인해주세요!',
                   text : '상세주소 또한 필수입력사항입니다',
                });
            event.preventDefault();
            return;
         }
         
           
        
    });
     

      function sample6_execDaumPostcode() {
         new daum.Postcode(
               {
                  oncomplete : function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
      
                     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var addr = ''; // 주소 변수
                     var extraAddr = ''; // 참고항목 변수
      
                     //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                     if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                     } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                     }
      
                     // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                     if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== ''
                              && /[동|로|가]$/g.test(data.bname)) {
                           extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== ''
                              && data.apartment === 'Y') {
                           extraAddr += (extraAddr !== '' ? ', '
                                 + data.buildingName
                                 : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                           extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
      
                     } else {
                        document.getElementById("sample6_extraAddress").value = '';
                     }
      
                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                     document.getElementById('sample6_postcode').value = data.zonecode;
                     document.getElementById("sample6_address").value = addr;
                     // 커서를 상세주소 필드로 이동한다.
                     document.getElementById("sample6_detailAddress")
                           .focus();
                  }
               }).open();
      }
      

      function checkName(){
         if(!(event.keyCode >= 12392 && event.keyCode <= 12687)) {
            alert("이름은 한글만 입력해주세요");
            event.preventDefault();
            return;
         }
      }
 </script>
</body>
</html>