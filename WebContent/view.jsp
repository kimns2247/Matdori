	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter"%>
	<%@ page import="bbs.Bbs" %>
	<%@ page import="bbs.BbsDAO" %>
	<%@ page import="bbs.JjimDAO" %>
	<%@ page import="bbs.Jjim" %>
	<%@ page import="evaluation.Evaluation" %>
	<%@ page import="evaluation.EvaluationDAO" %>
	<%@ page import="comment.Comment" %>
	<%@ page import="comment.CommentDAO" %>
	<%@ page import="java.io.File" %>
	<%@ page import="java.util.ArrayList"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	
	
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
   	font-size:15px;
   }
   .container{
   width:800px;
   margin-top:50px;
   }
   
   .bt1{
   	text-align: right;
   }

</style>  
	<title>맛집 게시판</title>
</head>


	<body>
		<%
			String userID = null;
			if(session.getAttribute("sessionID") != null){
				userID = (String) session.getAttribute("sessionID");
			}
			int boardID = 0;
			if (request.getParameter("boardID") != null){
				boardID = Integer.parseInt(request.getParameter("boardID"));
			}
			int bbsID = 0;
			if (request.getParameter("bbsID") != null){
				bbsID = Integer.parseInt(request.getParameter("bbsID"));
			}
			if (bbsID == 0){
				PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('유효하지 않은 글입니다.')");
		 		script.println("location href = 'login.jsp'");
		 		script.println("</script>");
			}
			Bbs bbs = new BbsDAO().getBbs(bbsID);
			Comment comment = new CommentDAO().getComment(bbsID);
		%>
		
					
<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top" data-bs-theme="dark">
    <div class="container-fluid" align="center">
      <a class="navbar-brand" href="index.jsp" ><img src="./images/matdori_logo.png" width="33" height="33">맛도리</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        
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
					} else {
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
		</nav>
</header>
		
<div class="container">
	<div class="col-lg-5">
		<div class="container">
			<table class="table table-haver" style="border: 1px solid #dddddd">
						<tr>
							<td colspan="6" align="left" bgcolor="beige">&nbsp;&nbsp;[제목]&nbsp;&nbsp;<%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
						</tr>
						<% //} %>	
						<tr>
							<td colspan="3" align="left">&nbsp;&nbsp;<%= bbs.getID() %></td> <!-- getUserID로 바꿔야 될 수도 있음  -->
							<td colspan="3" align="right"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11,13) + "시" +  bbs.getBbsDate().substring(14,16) + "분"  %></td>
						</tr>
						<% 	
						String real = "C:\\MDRWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\matdoriNew3\\bbsUpload";
						File viewFile = new File(real+"\\"+bbsID+"사진.jpg");
						if(viewFile.exists()){
					%>
						<tr>
							<td colspan="6"><br><br><img src = "bbsUpload/<%=bbsID %>사진.jpg" border="300px" width="300px" height="300px"><br><br>
						<% }
						else {%><td colspan="6"><br><br><%} %>
							<%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%><br><br></td>
						</tr>
						<%
							/* if(boardID==1) */{
							int like = 0;
							int soso = 0;
							int bad = 0;
							String Map = bbs.getMap().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>");
							EvaluationDAO evaluationDAO = new EvaluationDAO();
							ArrayList<Evaluation> list = evaluationDAO.getList(bbsID);
							for(int i=0; i<list.size(); i++){
								like = like + list.get(i).getLikeEat();
								soso = soso + list.get(i).getSosoEat();
								bad = bad + list.get(i).getBadEat();
							} %>
						<tr>
							<td colspan="6" align="left">&nbsp;&nbsp;[주소]&nbsp;&nbsp;<a href="https://map.naver.com/v5/search/<%=Map%>"><%=Map %></a></td>
						</tr>
						<tr align="center">
							<td colspan="2"><button onclick="location.href='evaluationAction.jsp?likeEat=1&sosoEat=0&badEat=0&bbsID=<%=bbsID%>'">좋아요(<%=like %>)</button></td>		
							<td colspan="2"><button onclick="location.href='evaluationAction.jsp?likeEat=0&sosoEat=1&badEat=0&bbsID=<%=bbsID%>'">그럭저럭(<%=soso %>)</button></td>		
							<td colspan="2"><button onclick="location.href='evaluationAction.jsp?likeEat=0&sosoEat=0&badEat=1&bbsID=<%=bbsID%>'">맛없어요(<%=bad %>)</button></td>		
						</tr>
						<tr>
						<%
							}
						%>
						<td colspan="6" align="center">	<a href="bbs.jsp?boardID=<%=boardID %>" class="btn-primary" >목록</a>
						<%
							if(userID != null && userID.equals(bbs.getID())){
						%>
								<a href = "update.jsp?bbsID=<%= bbsID %>&boardID=<%=boardID %>" class="btn-primary">수정</a>
								<a onclick="return confirm('정말로 삭제하시겠습니까?')" href = "deleteAction.jsp?bbsID=<%= bbsID %>&boardID=<%=boardID %>" class="btn-primary">삭제</a>
						</td>
						</tr>
						<% } %>
				</table>		
			</div>
			<div class="container">
				<div class="row">
					<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
						<tbody>
						<tr>
							<td align="left" bgcolor="beige">댓글</td>
						</tr>
						<tr>
							<%
								CommentDAO commentDAO = new CommentDAO();
								ArrayList<Comment> list = commentDAO.getList(boardID, bbsID);
								for(int i=0; i<list.size(); i++){
							%>
								<div class="container">
									<div class="row">
										<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
											<tbody>
											<tr>						
											<td align="left"><%= list.get(i).getID() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= list.get(i).getCommentDate().substring(0,11) + list.get(i).getCommentDate().substring(11,13) + "시" + list.get(i).getCommentDate().substring(14,16) + "분" %></td>		
											<td colspan="2"></td>
											<td align="right"><%
														if(list.get(i).getID() != null && list.get(i).getID().equals(userID)){
													%>
															<form name = "p_search">
																<a type="button" onclick="nwindow(<%=boardID%>,<%=bbsID %>,<%=list.get(i).getCommentID()%>)" class="btn-primary">수정</a>
															</form>	
															<a onclick="return confirm('정말로 삭제하시겠습니까?')" href = "commentDeleteAction.jsp?bbsID=<%=bbsID %>&commentID=<%= list.get(i).getCommentID() %>" class="btn-primary">삭제</a>
																		
													<%
														}
													%>	
											</td>
											</tr>
											<tr>
												<td colspan="5" align="left"><%= list.get(i).getCommentText() %>
												<% 	
													String commentReal = "C:\\MDRWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\matdoriNew3\\commentUpload";
													File commentFile = new File(commentReal+"\\"+bbsID+"사진"+list.get(i).getCommentID()+".jpg");
													if(commentFile.exists()){
												%>	
												<br><br><img src = "commentUpload/<%=bbsID %>사진<%=list.get(i).getCommentID() %>.jpg" border="300px" width="300px" height="300px"><br><br></td>											
												<%} %>	
											</tr>
										</tbody>
									</table>			
								</div>
							</div>
							<%
								}
							%>
						</tr>
					</table>
				</div>
			</div>
			<div class="container">
				<div class="form-group">
				<form method="post" encType = "multipart/form-data" action="commentAction.jsp?bbsID=<%= bbsID %>&boardID=<%=boardID%>">
						<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
							<tr>
								<td style="border-bottom:none;" valign="middle"><br><br><%=userID %></td>
								<td><input type="text" style="height:100px;" class="form-control" placeholder="상대방을 존중하는 댓글을 남깁시다." name = "commentText"></td>
								<td><br><br><input type="submit" class="btn-primary pull" value="댓글 작성"></td>
							</tr>
							<tr>
								<td colspan="3"><input type="file" name="fileName"></td>
							</tr>
						</table>
				</form>
				</div>
			</div>
			</div>
		</div>
		<script type="text/javascript">
		function nwindow(boardID,bbsID,commentID){
			window.name = "commentParant";
			var url= "commentUpdate.jsp?boardID="+boardID+"&bbsID="+bbsID+"&commentID="+commentID;
			window.open(url,"","width=600,height=230,left=300");
		}
		</script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script> 
	</body>
	</html>