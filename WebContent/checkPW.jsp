<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">




<style>
    .s1{
    
       text-align:center;
       
       font-size: 20px;
       
       }
    @font-face{
      font-family: "BMHANNAPro";
      src: url("fonts/BMHANNAPro.ttf");
   }  
     
     
     
     
     body {
     font-family: "BMHANNAPro";
         
      }
   
     .button {
           align:center;
     
     }
   input[type="button"] {
           background-color: #ff3d00; 
           height:  40px;
           
           padding: 5px 25px;
           border: none;
           border-radius: 3px;
           color: #FFFFFF;
           font-size: 13px;
           font-weight: bold;
           vertical-align: middle;
           text-align: center;
           align:center;
           }
           
    .s2 {
    text-align: center;
    /* margin-top: 20px; */
  }
  .checkID {
        font-size:20px;
  
  }
        

</style>


</head>

<body>




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



   <div style="text-align: center;">                                                 
     <img src="./images/find.png" alt="찾기 이미지" style="height: 160px; width: 160px; margin-top: 80px;"> 
    </div>  


	<div style="text-align: center;  margin-top: 100px;"> 
	<h2>비밀번호 찾기</h2>
	<h5> 개인정보 도용에 대한 피해 방지를 위하여 개방형pc을 권장하지 않습니다.</h5>
	</div>
	
	<hr>

<div class="space"></div>
<br><br><br>

<div class="fd" align="center"">       
<c:choose>
   <c:when test="${fid==-2}">
   비밀번호가 변경되지 않았습니다.
   잘못된 정보를 입력하셨습니다.
   </c:when>
   
   <c:otherwise>
   
   비밀번호 변경이 완료되었습니다.  <br>
   
   </c:otherwise>

</c:choose>

</div>

<div class="space"></div>
<br><br><br>

 <div class="s2">
	<input type="button" class="button" value="홈으로" onClick="location.href='index.jsp'"> 
	<input type="button" class="button" value="아이디찾기" onClick="location.href='findID.jsp'"> 
	<input type="button" class="button" value="로그인 화면으로" onClick="location.href='login.jsp'">
</div>

</body>
</html>