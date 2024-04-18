<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<title>회원가입</title>
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
       background-color : #eeeeee  
  }
   
     .button {
           align:center;
     
     }
     			
       .s2 input[type="button"] {
        background-color: #ff3d00;
        height: 40px;
        padding: 5px 25px;
        border: none;
        border-radius: 3px;
        color: #FFFFFF;
        font-size: 18px; /* 수정된 부분: 버튼 텍스트 크기 조절 */
        font-weight: bold;
        vertical-align: middle;
        text-align: center;
        align: center;
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
      <a class="navbar-brand" href="index.jsp" ><img src="./images/matdori_logo.png" width="33" height="33">맛도리</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="mx-auto text-center"> <!-- Added mx-auto and text-center classes here -->
          <form class="d-flex" role="search">
            <div class="input-group"> <!-- Added input-group for styling -->
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
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
            <a class="nav-link" href="register.jsp">회원가입</a>
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

<script>
	window.history.forward();
</script>

  <!--  풍선 이미지 -->
 <div style="text-align: center;">                                                 
     <img src="./images/check.png" alt="check" style="height: 250px; width: 250px; margin-top: 180px;"> 
  
 </div>

 <br><br><br>



	<div class="s1">
	  
	    <h3><%=userID %>님의 결제가 완료되었습니다</h2><br>
		<h7> 고객센터 문의 : 1500-1004</h7>
	  
	</div>

<hr>
   
   <div class="s2" align="center">
	     
	     <input type="button" class="button"value="쇼핑 계속하기" onClick="location.href='index.jsp'" >
	     <input type="button" class="button"value="예약내역 확인" onClick="location.href='myReservation.do?userID=<%=userID%>'">
		
	</div>
  

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>


</body>
</html>