package Login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.heava.my.HeavaImpl;
import com.heava.my.HeavaMypage;
import com.heava.my.ShaTest;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet3.di") 
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* doGet(request, response); */

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		TelInfoDAO tidao1 = null;
		UserInfoVO iv = null;
		ShaTest st = new ShaTest();

		try {
			tidao1 = new TelInfoDAO();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String loginID = request.getParameter("loginID");
		String loginPassword = request.getParameter("loginPassword");
	

		System.out.println("입력받은 아이디 " + loginID);
		System.out.println("입력받은 비밀번호  " + loginPassword);

		
			try {
				iv = tidao1.getmypage(loginID);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			
			
		if(iv != null) {
			String salt1 = iv.getSalt();
			System.out.println(loginID + " " + salt1);
			String pw = st.getEncrypt(loginPassword, salt1);
			System.out.println("salt " + pw);
			int result = tidao1.login_mdr(loginID, pw);
			System.out.println("result" + result);
			
			
			if(result == 1) {
				  
				HttpSession ses1 = null;
				ses1 = request.getSession();
				ses1.setAttribute("sessionID", loginID);
				 	  
				  ServletContext context = getServletContext(); RequestDispatcher dispatcher =
				  context.getRequestDispatcher("/index.jsp"); 
				  dispatcher.forward(request,response);
			}else if(result == -1) {
				  
				  response.sendRedirect("login1.jsp");  
			}
		}else {
			response.sendRedirect("login1.jsp");
		}
			
	}

}
