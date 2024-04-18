<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta name="Generator" content="EditPlus®"> -->
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script> 
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  <script src="./js/jquery-3.7.1.min.js"></script>

<script>
function registerCheckFunction(){
      var id = $('#id').val();
      $.ajax({
         type: 'POST',
         url: './RegisterCheckServlet',
         data: { id : id },
         success : function(result){
            if(result ==1){
               alert("사용할 수 있는 아이디입니다.")
            }else if (result == 0){
               alert("아이디 칸이 비어있습니다.")
         }else{
               alert("이미 존재하는 아이디입니다.")
            }
         }
      })
   }
</script>

<%
response.setHeader("pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache");     // 캐시날리는 코드(로그아웃 후 뒤로가기 방지)
response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
response.setDateHeader("Expires", 1L);              //응답결과의만료일지정

%>

<script>
function EmailCheckFunction(){
      var email = $('#email').val();
      var cert = $('#cert').val();
      $.ajax({
         type: 'POST',
         url: './SendProcess.do',
         data: { 
            email : email,
             cert : cert
         },
         success : function(result){
            if(result ==1){
                  alert("사용가능한 이메일입니다.")
               }else if (result == 0){
                  alert("이메일 입력칸이 비어있습니다")
            }else{
                  alert("이메일이 전송되었습니다!")
              
            }
         }
      })   
   }
</script>

<script>
$('.pw').focusout(function(){
   let pass1 = $("#password").val();
    let pass2 = $("#passwordcheck").val();
    
    if (pass1 != "" || pass2 != ""){
       if (pass1 == pass2){
           $("#checkPw").html('일치');
           $("#checkPw").attr('color','green');
        } else {
           $("#checkPw").html('불일치');
            $("#checkPw").attr('color','red');
        }
    }

})

</script>




<style type="text/css">




#btn {
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

#btn:hover {
 
     background-color: white;
     color: black;
     border: 2px solid #ff3d00;

}


#btn2 {
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

#btn2:hover {
 
     background-color: white;
     color: black;
     border: 2px solid #ff3d00;

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
    
</style>
<script>
   $(function(){   
      $('#id').on('keyup', function(){
         var $checkID = $('#id').val();
         var params = "?id="+$checkID;
         
         var $msg = $('#msg');

         if($checkID == ""){
            console.log("아이디가 입력되지않았습니다!")
            return;
         }
         
         $.ajax({
            type : 'POST',
            url: './RegisterCheckServlet',
            data : { "id" : $checkID },
            dataType : "html",
            async : true,
             success : function(result){
                     if(result ==1){
                        $msg.html("<h5>사용가능한 아이디입니다</h5>");
                     }else if (result == 0){
                        $msg.html("<h5>아이디 입력칸이 비어있습니다</h5>");
                  }else{
                     $msg.html("<h5>아이디가 이미 존재합니다</h5>");
                     }
            }
         })
      })
   })
</script>




 <%
 
   response.setHeader("pragma", "No-cache");
   response.setHeader("Cache-Control", "no-cache");     // 캐시날리는 코드(로그아웃 후 뒤로가기 방지)
   response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
   response.setDateHeader("Expires", 1L);            //응답결과의만료일지정

 %>


<script>
function EmailCheckFunction(){
      var email = $('#email').val();
      var cert = $('#cert').val();
      $.ajax({
         type: 'POST',
         url: './SendProcess.do',
         data: { 
            email : email,
             cert : cert
         },
         success : function(result){
            if(result ==1){
                  alert("사용가능한 이메일입니다.")
               }else if (result == 0){
                  alert("이메일 입력칸이 비어있습니다")
            }else{
                  alert("이메일이 전송되었습니다!")
              
            }
         }
      })   
   }
</script>

<script>
$('.pw').focusout(function(){
   let pass1 = $("#password").val();
    let pass2 = $("#passwordcheck").val();
    
    if (pass1 != "" || pass2 != ""){
       if (pass1 == pass2){
           $("#checkPw").html('일치');
           $("#checkPw").attr('color','green');
        } else {
           $("#checkPw").html('불일치');
            $("#checkPw").attr('color','red');
        }
    }

})

</script>

</head>


<body>

<script>
window.history.forward(2);
</script>


<%
Random r = new Random();
   
int cert = r.nextInt(800000) + 100000;
%> 


<div class="logo" align="center"><br>
<a href="index.jsp"><img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100"></a>
</div>
   
  <h2 align="center"> 회원정보 입력</h2>  
    
<form name = "loginform" action="telInsert.do" method = "post">   
  <table>
    <tr>
        <td class="col1">아이디</td>
        <td class="col2"><input type="text" name="id" id = "id" style = "width: 170px;" placeholder = "아이디 입력"><span id ="msg"></span>
        <!-- <button onclick = "registerCheckFunction();" type = "button">중복체크</button></td> -->
    </tr>
    <tr>
        <td class="col1">비밀번호</td>
        <td class="col2">
            <!-- <input type="password" name="pw" maxlength="10" -->
            <input type="password" name="pw" id="pw" onchange="check_pw()" placeholder = "비밀번호 입력">
            <span style="color:cadetblue">보안성</span> <progress id="pw_pro" value="0" max="3"></progress>&nbsp;<span id="pw_pro_label"></span>
         </td>
    </tr>
    <tr>
        <td class="col1">비밀번호 확인</td>
        <td class="col2">
           <!--  <input type="password" name="pwdcheack" maxlength="16"> -->
           <input type="password" name = "pwcheck" id = "pwcheck" onchange="check_pw()" placeholder = "동일한 비밀번호 입력">&nbsp;<span id="check"></span>
            <p>※비밀번호는 <span class="num">문자, 숫자, 특수문자(~!@#$%^&*)의 조합
            10 ~ 16자리</span>로 입력이 가능합니다.</p>
        </td>
    </tr>
    <tr>
        <td class="col1">이름</td>
        <td class="col2"><!-- <input type="text" name="name" maxlength="16"> -->
        <input type="text" name = "name" id = "name" onkeypress = "checkName()" placeholder = "이름 입력"></td>
    </tr>
    
    <tr>
        <td class="col1">생년월일</td>
        <td class="col2"><!-- <input type="date" name="name" maxlength="16"> -->
        <input type="date" name="birth" id = "birth" min ="1940-01-01" max="2010-12-31"></td>
    </tr>
    
    <tr>
        <td class="col1">성별</td>
        <td class="col2">
        <input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "남성" checked>남성
         <input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "여성">여성</td>
    </tr>
    <tr>
        <td class="col1">이메일</td>
     <td class="col2">
            <input type="email" name = "email" id = "email" placeholder = "이메일 입력">
         <input type = "hidden" readonly name = "cert" id = "cert" value = "<%=cert%>">
       <button onclick = "EmailCheckFunction();" type = "button">이메일 인증</button>
        </td>
    </tr>
     <tr>
        <td class="col1">인증번호 입력</td>
        <td class="col2">
        <input type = "text" name = "emailcheck" id ="emailcheck" placeholder = "인증번호 입력" style = "width: 170px;">&nbsp;<span id="email_check"></span>
       <button onclick = "check_mail();" type = "button">인증 확인</button></td>
    </tr>
    
    
    <tr>
        <td class="col1">주소</td>
        <td class="col2">
          <input type="text" name = "address1" id = 'sample6_postcode'>  
          <input type="text" name = "address2" id = 'sample6_address'>
          <input type="button" value="우편번호찾기" onclick="sample6_execDaumPostcode()">  </td>
       </tr>
         
     <tr>
         <td class="col1">상세주소</td>
         <td class="col2">
         <input type="text" name = "address4" id = 'sample6_extraAddress'>
        <input type="text" name = "address3" id = 'sample6_detailAddress' placeholder = "동 호수 입력"></td>
       
       
       <tr>
        <div> <!-- 이용약관, 서비스 동의, 마케팅 동의 -->
         <td class="col1">가입동의</td>
         <td class="col2">
         <label for="terms"><input type="checkbox" name="agree" id="terms" value="terms">이용약관</label>
         <label for="service"><input type="checkbox" name="agree" id="service" value="service"> 서비스 동의</label>
         <label for="marketing"><input type="checkbox" name="agree" id="marketing" value="marketing">마케팅 동의(선택)</label>
        </td>
        </div>
        </tr>
        
    </table>
    
  </div>

   
    <div class="create">
       <button id="btn">회원가입</button> 
       <input type="button" id ="btn2" value="취소" onClick="location.href='login.jsp'">  
  	</div>
   
   
 <script type = "text/javascript">
   
   
   $('#btn').on('click', function(event){
      
    
      
      if($('#id').val() == '' || $('#id').val() >= 5) {
         Swal.fire({
                icon: 'error',
                title : '아이디를 확인해주세요!',
                text : '아이디는 5자 이상 입력해주셔야합니다',
             });
         
         event.preventDefault();  // 이벤트(서브밋) 방지
         return;  // 더 이상 코드 진행하지 말 것
      }
      
      
    
      if($('#pw').val() == '') {
         Swal.fire({
                icon: 'error',
                title : '비밀번호를 확인해주세요!',
                text : '비밀번호는 필수입력사항입니다.',
             });
         event.preventDefault();
         return;
      }
   
    
      if($('#pw').val() != $('#pwcheck').val()) {
         Swal.fire({
                icon: 'warning',
                title : '비밀번호와 비밀번호확인부분을 확인해주세요!',
                text : '서로 일치하지않습니다.',
             });
         event.preventDefault();
         return;
      }
      
      
     
      if($('#name').val() == '') {

          Swal.fire({
             icon: 'info',
             title : '이름을 확인해주세요!',
             text : '이름은 필수입력사항입니다.',
          });
         event.preventDefault();
         return;
      }
          
     
      if($('#birth').val() == '') {
         Swal.fire({
                icon: 'info',
                title : '생년월일을 확인해주세요!',
                text : '생년월일은 필수입력사항입니다.',
             });
         event.preventDefault();
         return;
      }
      
     
       if($('#email').val() == '') {
          Swal.fire({
                 icon: 'warning',
                 title : '이메일을 확인해주세요!',
                 text : '이메일은 인증을 받아야하니 필수입력사항입니다.',
              });
          event.preventDefault();
          return;
       }
       
       
      
       if($('#emailcheck').val() != $('#cert').val()) {
          Swal.fire({
                 icon: 'warning',
                 title : '이메일인증번호를 확인해주세요!',
                 text : '이메일로 발송된 인증번호를 다시 확인해주세요',
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
      
      
   
     
      
      if($('#terms').is(':checked') == false || $('#service').is(':checked') == false) {
         Swal.fire({
                icon: 'question',
                title : '이용약관과 서비스동의부분을 확인해주세요!',
                text : '본 서비스를 이용하기 위해서는 이용약관과 서비스동의를 부탁드립니다.',
             });
         event.preventDefault();
         return;
      }
   
            
   });
   
 
   function checkName(){
      if(!(event.keyCode >= 12392 && event.keyCode <= 12687)) {
         alert("이름은 한글만 입력해주세요");
         event.preventDefault();
         return;
      }
   }
</script>
   
   
   
<script>
   function checkform(){
      if ( ! (document.loginform.id.value.length >= 5) {
         alert("아이디는 5글자이상으로 입력바랍니다!");
         event.preventDefault();
         return;
         
      }else if(document.loginform.id.value == "")){
         alert("아이디는 공백일 수 없습니다!");
         event.preventDefault();
         return;
         
      } else if(!isNaN(document.loginform.name.value.substr(0,1))) {
         alert("이름에는 숫자를 입력하실수 없습니다.");
         event.preventDefault();
         return;
         
      }else if(!(document.loginform.pw.value.length >= 6 && document.loginform.pw.value.length <= 16)){
         alert("비밀번호는 6자 이상, 16자 이내로 입력바랍니다.");
         event.preventDefault();
         return;
         
      }else if(document.loginform.pw.value == "")){
         alert("비밀번호가 입력되지 않았습니다 입력바랍니다");
         event.preventDefault();
         return;
      }
      
   }
   
</script>
   
   
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
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
</script>
   
 <script>
   function check_mail(){
   
            var checknum = document.getElementById('emailcheck').value;
   
              if(document.getElementById('emailcheck').value == <%=cert%>){
                  document.getElementById('email_check').innerHTML='인증번호가 일치합니다.'
                  document.getElementById('email_check').style.color='blue';
              }
              else{
                  document.getElementById('email_check').innerHTML='인증번호가 일치하지 않습니다.';
                  document.getElementById('email_check').style.color='red';
              }
      
          
      }
      
</script>
   
   
 <script>   /* 비밀번호에 조건문 여러개 달아줌 */
           function check_pw(){
    
               var pw = document.getElementById('pw').value;
               var SC = ["!","@","#","$","%"];
               var check_SC = 0;
    
               if(pw.length < 6 || pw.length>16){
                   document.getElementById('pw_pro_label').innerHTML ='비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.';
                   document.getElementById('pw_pro').value='0';
                   return;
               }
               for(var i=0;i<SC.length;i++){
                   if(pw.indexOf(SC[i]) != -1){
                       check_SC = 1;
                   }
               }
               if(check_SC == 0){
                   document.getElementById('pw_pro_label').innerHTML = '비밀번호에 !,@,#,$,% 의 특수문자를 포함시켜야 합니다.'
                   return;
               }
               document.getElementById('pw_pro_label').innerHTML = '';
               if(pw.length < 8){
                   document.getElementById('pw_pro').value='1';
               }
               else if(pw.length<12){
                   document.getElementById('pw_pro').value='2';
               }
               else{
                   document.getElementById('pw_pro').value='3';
               }
               if(document.getElementById('pw').value !='' && document.getElementById('pwcheck').value!=''){
                   if(document.getElementById('pw').value==document.getElementById('pwcheck').value){
                       document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                       document.getElementById('check').style.color='blue';
                   }
                   else{
                       document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                       document.getElementById('check').style.color='red';
                   }
               }
           }
       </script>
  </form>
  
  
 </body>
</html>
  
  
  
  