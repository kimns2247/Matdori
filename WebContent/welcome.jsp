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
  
        /* 대부분의 모바일 기기 및 작은 화면 */
.bodyBack {
  margin: 20px auto;
  border: 1px solid #c0c0c4;
  padding: 20px;
  width: 90%;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
}

.btn.btn-primary.w-100.py-2 {
  width: 100%;
}

/* 태블릿 및 중간 크기 화면 */
@media (min-width: 768px) {
  .bodyBack {
    width: 70%;
  }
}

/* 데스크탑 화면 */
@media (min-width: 992px) {
  .bodyBack {
    width: 50%;
  }
}
           

</style>

</head>
<body>
  
  
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
      </div>
    </div>
  </nav>
</header>
<%  
    String sesName = (String)session.getAttribute("sesname");
   String sesID = (String)session.getAttribute("sesid");
%>

<script>
window.history.forward();
</script>

  <!--  풍선 이미지 -->
 <div style="text-align: center;">                                                 
     <img src="./images/party.png" alt="파티 이미지" style="height: 350px; width: 350px; margin-top: 60px;"> 
  
 </div>

   <div class="s1">
    
      <h3><%=sesName%>님의 회원가입을 축하드립니다!</h2><br>
      
      <h5><%=sesName%>회원님의 아이디는 <%=sesID%> 입니다.</h5>
      <h7>알차고 실속있는 서비스로 찾아뵙겠습니다.</h7>
     
   </div>

<hr>
   <div class="s2">
        
        <input type="button" class="button" value="메인으로" onClick="location.href='index.jsp'">
      
   </div>
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>