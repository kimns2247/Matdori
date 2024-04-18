<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>


  body {
      background: #eee;
      }

.cs{
	 align:center;
}

.logo img {
      width: 200px;
      height: 150px;
      text-align:center;
       background-color: white;
 }
 .logo{
 	text-align: center;
 }
 
 
  @font-face{
	font-family: "BMHANNAPro";
	src: url("fonts/BMHANNAPro.ttf");
	}
	
body{
	font-family:"BMHANNAPro";
}
 

</style>


</head>
<body style="margin: 100px 300px;">


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

        
<!--         <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="mx-auto text-center"> Added mx-auto and text-center classes here
          <form class="d-flex" role="search" action = "SearchServlet.ser" method = "get">
            <div class="input-group"> Added input-group for styling
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name="search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </div>
          </form>
        </div> -->
        
        
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











<div class="logo">
 <a href="index.jsp"><img src="matdori_logo2.jpg"></a>
</div><br>


<div class="cs" align="center">
<img src="./images/cscenter.jpg" width="1350px" height="600px">   <!-- width 1500에서 1350으로 변경함 -->
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>