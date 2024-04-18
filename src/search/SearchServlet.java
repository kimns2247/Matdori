package search;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MdrDAO.MdrDAO;



/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet.ser")
public class SearchServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
           
            MdrDAO tidao1 = null;
           
            try {
            tidao1 = new MdrDAO();
         } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }

            
            String Search = request.getParameter("search");
            System.out.println("서치서블릿에 넘어온 검색어" + Search);
            
            
            int result = tidao1.getSearch(Search);
            System.out.println(result);
            
            if(result == 0) {
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/ilsik1.jsp"); 
               dispatcher.forward(request,response);
            } else if(result == 1 ) {
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/ilsik2.jsp"); 
               dispatcher.forward(request,response);
            } else if(result == 2 ) {
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/ilsik3.jsp"); 
               dispatcher.forward(request,response);
            } else if(result == 3 ) {
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/hansik1.jsp"); 
               dispatcher.forward(request,response);
            } else if(result == 4){
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/hansik2.jsp"); 
               dispatcher.forward(request,response);
            }else if(result == 5){
                  ServletContext context = getServletContext(); 
                  RequestDispatcher dispatcher = context.getRequestDispatcher("/hansik3.jsp"); 
                  dispatcher.forward(request,response);
            }else if(result == 6){
                ServletContext context = getServletContext(); 
                RequestDispatcher dispatcher = context.getRequestDispatcher("/yangsik1.jsp"); 
                dispatcher.forward(request,response);
            }else if(result == 7){
                ServletContext context = getServletContext(); 
                RequestDispatcher dispatcher = context.getRequestDispatcher("/yangsik2.jsp"); 
                dispatcher.forward(request,response);
             }else if(result == 8){
                 ServletContext context = getServletContext(); 
                 RequestDispatcher dispatcher = context.getRequestDispatcher("/yangsik3.jsp"); 
                 dispatcher.forward(request,response);
           }else if(result == 9){
               ServletContext context = getServletContext(); 
               RequestDispatcher dispatcher = context.getRequestDispatcher("/dessert1.jsp"); 
               dispatcher.forward(request,response);
           }else if(result == 10){
             ServletContext context = getServletContext(); 
             RequestDispatcher dispatcher = context.getRequestDispatcher("/dessert2.jsp"); 
             dispatcher.forward(request,response);
       }else if(result == 11){
            ServletContext context = getServletContext(); 
            RequestDispatcher dispatcher = context.getRequestDispatcher("/dessert3.jsp"); 
            dispatcher.forward(request,response);
       }
            else {
                 ServletContext context = getServletContext(); 
                  RequestDispatcher dispatcher = context.getRequestDispatcher("/NotFound.jsp"); 
                  dispatcher.forward(request,response);
            }

            

      }
   

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
      
     
   }
}