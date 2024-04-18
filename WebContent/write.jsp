<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"> -->

<script src="./js/jquery-3.7.1.min.js"></script>

<script type="text/javascript">
   function goPopup(){
      var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   }
   function jusoCallBack(roadAddrPart1){
      document.form.map.value = roadAddrPart1;
   }
   
</script>


<style>
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

    @font-face{
   	font-family: "BMHANNAPro";
   	src: url("fonts/BMHANNAPro.ttf");
   	}
   	
   body{
   	font-family:"BMHANNAPro";
   }
   .container{
   margin-top:150px;
   }
   
   .bt1{
   	text-align: right;
   }

</style>  
</head>

<body style="margin: 0px 200px;">

   <%
      String userID = null;
      if(session.getAttribute("sessionID") != null){
         userID = (String) session.getAttribute("sessionID");
      }
      int boardID = 0;
      if (request.getParameter("boardID") != null){
         boardID = Integer.parseInt(request.getParameter("boardID"));
      }
   %>
   
 <header data-bs-theme="dark">
 
  <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top" data-bs-theme="dark">
    <div class="container-fluid" align="center">
      <a class="navbar-brand" href="index.jsp" ><img src="./images/matdori_logo.png" width="33" height="33">맛도리</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- <div class="mx-auto text-center"> Added mx-auto and text-center classes here
          <form class="d-flex" role="search" action = "SearchServlet.ser" method = "get">
            <div class="input-group"> Added input-group for styling
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name="search" width="100px;">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
          </form> -->
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
            <a class="nav-link" href="cscenter.jsp">고객센터</a>
          </li>
        </ul>
        
        <%
				}
		%>
        
      </div>
    </div>
  </nav>
</header>
   

   <div class="container">
      <div class="row">
      <form name = "form" method="post" encType = "multipart/form-data" action="writeAction.jsp?boardID=<%=boardID%>&keyValue=multipart">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
               <thead>
                  <tr>
                     <th colspan="5" style="background-color: #eeeee; text-align: center;">게시판 글쓰기 양식</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td colspan="5" ><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
                  </tr>
                  <tr>
               <%if(boardID==1){ %>
                     <td colspan="4" ><input type="hidden" id="map" name="map" class="form-control" value = "온솥"/></td> 
               <%}else if(boardID==2){ %>
                     <td colspan="4" ><input type="hidden" id="map" name="map" class="form-control" value = "하선생"/></td>
               <%}else if(boardID==3){ %>
               <td colspan="4" ><input type="hidden" id="map" name="map" class="form-control" value = "밤가시 버거"/></td>
         		<%}else if(boardID==4){ %>
               <td colspan="4" ><input type="hidden" id="map" name="map" class="form-control" value = "스시우미"/></td>
         		<%}else if(boardID==5){ %>
               <td colspan="4" ><input type="hidden" id="map" name="map" class="form-control" value = "히포 브런치"/></td>
         		<%}%>
         		
                  </tr>
                  <tr>
                     <td colspan="5" ><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px;"></textarea></td>
                  </tr>
                  <tr>
                     <td colspan="5" ><input type="file" name="fileName"></td>
                  </tr>
               </tbody>
            </table>
            <div class="bt1">
               <input type="submit" class="btn-primary pull-right" value="글쓰기" style="align:right">
             </div> 
      </form>
      </div>
   </div>

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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script> 
</body>
</html>