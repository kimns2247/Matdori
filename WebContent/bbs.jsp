<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">


 <style>
      .b3 {
         text-align: center;
      }
      
      
      .igmDiv {         /* 페이지가 옮겨질때 마다 사이즈가 변경되는 것을 방지 */
         background-image: url(bbsdessert.jpg);
          height: 225px;
          background-size: cover;
          width: 100%;
      }
      
      .bTitle{
         width: 100%;
          text-align: center;
      }
      .navDiv {
         margin-top: 20px;
         width: 1170px;
         margin-left: auto;
         margin-right: auto;
         height: 45px;
         line-height: 45px;
      }
      
      .navDiv .home {
         width: 200px;
         float: left;
      }
      
      .navDiv .search {
      }
      
      .navDiv .search input[type="text"] {
         line-height: normal;
          padding: 6px 12px;
      }
      
      .navDiv .search input[type="button"] {
      }
      
      .Fr{
         float: right;
      }
      
</style>
</head>

<body>
   <%
      String userID = null;
      if(session.getAttribute("sessionID") != null){
         userID = (String) session.getAttribute("sessionID");
      }
    
      int pageNumber = 1; 
      
      if (request.getParameter("pageNumber") != null){
         pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
      }
       int boardID = 1;
         if (request.getParameter("boardID") != null){
            boardID = Integer.parseInt(request.getParameter("boardID"));
         } 
   %>
   
     <%
      if(boardID == 1){
     %>      
         <img src = "onsot.jpg" style="width:1680px; height:330px;">
         <div class="container" align="center"><br><br> 
         <h1>온솥 리뷰 게시판<br></h1>
         <p>온솥 리뷰 게시판입니다. 솔직한 리뷰를 작성해주세요!<br><br></p>
         </div>
   <% }
      else if(boardID == 2){
   %>
         <img src = "./joongsik/bbsjoongsik.jpg" style="width:1680px; height:330px;">
          <div class="container" align="center"><br><br> 
          <h1>하선생 리뷰 게시판<br></h1>
         <p>하선생 리뷰 게시판입니다. 솔직한 리뷰를 작성해주세요!<br><br></p>
         </div>
         
    <% }else if(boardID == 3){
      %>
       <img src = "./yangsik/bbsyangsik.jpg" style="width:1680px; height:330px;">
       <div class="container" align="center"><br><br> 
       <h1>밤가시 버거 리뷰 게시판<br></h1>
       <p>밤가시 버거 리뷰 게시판입니다. 솔직한 리뷰를 작성해주세요!<br><br></p>
       </div>
       
       
      <% }else if(boardID == 4){
      %>
       <img src = "./japan/bbsilsik.jpg" style="width:1680px; height:330px;">
       <div class="container" align="center"><br><br> 
       <h1>스시우미 리뷰 게시판<br></h1>
       <p>스시우미 리뷰 게시판입니다. 솔직한 리뷰를 작성해주세요!<br><br></p>
       </div>
       
       
       <% }else if(boardID == 5){
      %>
       <img src = "./dessert/bbsdessert.jpg" style="width:1680px; height:330px;">
       <div class="container" align="center"><br><br> 
       <h1>히포 브런치 리뷰 게시판<br></h1>
       <p>히포 브런치 리뷰 게시판입니다. 솔직한 리뷰를 작성해주세요!<br><br></p>
       </div>
       
   <% }
     
   %>
    
   
    <!-- 검색하는 창 / 버튼 -->
      <div class="navDiv" align="left">
         <div class="home">
            <img src="./images/home.png" style="height: 30px; weight: 30px;" onclick="location.href='index.jsp'">
            
         </div>
         <div class="search Fr">
            <form name="c_search">
               <input type="text" id="search" /> 
               <input type="button"  class="btn" value="검색" onclick="send(<%=boardID %>)" />
            </form>
         </div>
      </div>
   
   
      <div class="container">
         <div class="row">
            <table class="table table-striped"
               style="text-align: center; border: 1px solid #dddddd">
               <thead>
                  <tr>
                     <th style="background-color: #eeeee; text-align: center;">번호</th>
                     <th style="background-color: #eeeee; text-align: center;">제목</th>
                     <th style="background-color: #eeeee; text-align: center;">작성자</th>
                     <th style="background-color: #eeeee; text-align: center;">작성일</th>
                  </tr>
               </thead>
               <tbody>
                  <%
                        BbsDAO bbsDAO = new BbsDAO();
                        ArrayList<Bbs> list = bbsDAO.getList(boardID, pageNumber);
                        for(int i = 0; i < list.size(); i++){   
                        %>
                  <tr>
                     <td><%= list.get(i).getBbsID() %></td>
                     <td><a
                        href="view.jsp?boardID=<%=boardID%>&bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
                     <td><%= list.get(i).getID() %></td>
                     <td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
                  </tr>
                  <%
                        }
                        %>
                  <%
                        if(list.size() == 0){
                         %>
                         <tr>
                            <td colspan="4">데이터가 없습니다.</td>
                         </tr>
                   <%    
                        }
                        %>
               </tbody>
            </table>
               <input type="button" class="btn Fr" value="글쓰기" onclick="location.href='write.jsp?boardID=<%=boardID%>'" />
         </div>
      </div>
      <div class=container style="text-align: center">
         <%
               BbsDAO bbsDAO1 = new BbsDAO();
               int pages = (int) Math.ceil(bbsDAO1.getCount(boardID)/10)+1;
               for(int i=1; i<=pages; i++){ %>
         <button type="button"
            onclick="location.href='bbs.jsp?boardID=<%=boardID %>&pageNumber=<%=i %>'"><%=i %></button>
         <%} %>
      </div>
   
      <script>
         function nwindow(boardID){
            window.name = "parant";
            var url= "search.jsp?boardID="+boardID;
            window.open(url,"","width=250,height=200,left=300");
         }
         
   
         function send(boardID){
            var sb;
            var search = document.c_search.search.value;
            sb = "searchBbs.jsp?boardID="+boardID+"&search=" + search;
            location.href = sb;
         }
      </script>
      <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
   </body>
</html>
   