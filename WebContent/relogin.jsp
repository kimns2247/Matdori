<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
@font-face{
	  font-family: "BMHANNAPro";
	  src: url("fonts/BMHANNAPro.ttf");
	}
	   
body{
	  font-family:"BMHANNAPro";
	  
	 }
</style>

</head>
<body style="margin: 100px 200px;">

<script>
window.history.forward();

</script>


 <div class="text-center" align="center">
  <img class="logo" src="./images/matdori_logo.png" alt="" width="100" height="100">
 </div><br><br>

<h1 align="center">개인정보 변경이 완료되었습니다. </h1>
<h1 align="center">잠시후 로그인창으로 이동됩니다.</h1>
<h2 align="center">재로그인 부탁드립니다.</h2>

<script type="text/javascript">

setTimeout("location.href = 'login.jsp'",2000); 

</script>

</body>
</html>