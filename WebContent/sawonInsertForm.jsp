<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<!--onclick="sample6_execDaumPostcode  -->


<h1>회원정보입력</h1>
<form action="telInsert.do" method = "post">
<table border=1>
	<tr><td style = "width: 110px;"><h5>아이디</h5></td>
		<td><input type="text" name = "id" id = "id" required placeholder = "아이디 입력"></td>
		<td style = "width: 110px;"><button onclick = "registerCheckFunction();" type = "button">중복체크</button></td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>비밀번호</h5></td>
		<td colspan = "2"><input type="password" name = "password" id = "password" class= "pw" required placeholder = "비밀번호 입력"></td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>비밀번호 확인</h5></td>
		<td colspan = "2"><input type="password" name = "passwordcheck" id = "passwordcheck" class= "pw" required placeholder = "동일한 비밀번호 입력">
		<font id = "checkPw" size = "2"></font>
		</td>
		
	</tr>
	
	<tr><td style = "width: 110px;"><h5>이름</h5></td>
		<td colspan = "2"><input type="text" name = "name" id = "name" required placeholder = "이름 입력"></td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>생년월일</h5></td>			
		<td colspan = "2"><input type="date" name="birth" id = "birth"></td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>성별</h5></td>	
		<td colspan = "2">
		<input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "남성" checked>남성
		<input type="radio" name = "gender" id = "gender" autocomplete = "off" value = "여성">여성
		</td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>이메일</h5></td>	
		<td colspan = "2"><input type="email" name = "email" required placeholder = "이메일 입력"></td>
	</tr>
	
	<tr><td style = "width: 110px;"><h5>주소</h5></td>	
		<td colspan = "2"><input type="text" name = "address"></td>
	</tr>
	
	

</table><input type="submit" value="추가">

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


</form>
<table border=0>

<tr><td><a href="sawonUpdateForm.jsp">[수정]</a></td>
<tr><td><a href="sawonDeleteForm.jsp">[삭제]</a></td>
<td><a href="getAllInfo.jsp">겟올인포로</a></td>
</table>



</body>
</html>