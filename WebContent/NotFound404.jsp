<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
   <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
      <link href="./css/error.css" rel="stylesheet" />
      <meta charset="UTF-8">
      <title>404</title>
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
      
      <div class="errConDiv">
         <!--  경고 이미지 -->
          <div class="img">
             <div>
                <img src="./images/notfound404.png" alt="경고 이미지"> 
            </div>
         </div>
         
          <h2 class="mb-4">죄송합니다.</h2>
          <h2>요청하신 페이지를 찾을 수 없습니다.</h2>
      
          <div class="mt-4 con">
              <p>
                 방문하시려는 페이지의 주소가 잘못 입력되었거나,
                 <br>
                 페이지의 주소가 변경 또는 삭제되어 요청하신 페이지를 찾을 수 없습니다.
                 <br>
                 <br>
                 입력하신 주소를 확인 후 다시 시도해 주세요.
                 <br>
                 지속적인 문제 발생 시 고객센터로 문의해 주세요.
                 <br>
                 <br>
                 문제 확인 후 빠른 시일 내에 해결하겠습니다.
                 <br>
                 <br>
                 감사합니다.
              </p>
              
            <div class="errBtn">
               <input type="button" class="button1" value="이전페이지로 돌아가기" onClick="location.href='index.jsp'">
               <input type="button" class="button2" value="맛도리 홈페이지로 이동" onClick="location.href='index.jsp'">
            </div>
          </div>
      </div>
      
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   </body>
</html>