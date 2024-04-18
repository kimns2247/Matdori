<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<title></title>
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

 <!-- 찾기 이미지 -->
    <div style="text-align: center;">                                                 
     <img src="./images/find.png" alt="찾기 이미지" style="height: 160px; width: 160px; margin-top: 80px;"> 
  
 </div>  


<div style="text-align: center;  margin-top: 100px; "> 
<h2>아이디 찾기</h2>
<h5> 개인정보 도용에 대한 피해 방지를 위하여 개방형pc을 권장하지 않습니다.</h5>

<hr>

<div class=checkID id=checkID>


<c:choose>
   <c:when test="${fid.id==null}">
   잘못된 정보를 입력하셨습니다.
   
   </c:when>
   
   <c:otherwise>
   
   아이디는 "${fid.id}"  <br>
   
   </c:otherwise>

</c:choose>



</div>
</div>

   </div>

<hr>
   <div class="s2">
        <input type="button" class="button" value="아이디 찾기" onClick="location.href='findID.jsp'">
        <input type="button" class="button" value="비밀번호 찾기" onClick="location.href='findPW.jsp'">
       <input type="button" class="button" value="로그인 화면으로" onClick="location.href='login.jsp'">
   </div>
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>