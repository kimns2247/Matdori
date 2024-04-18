package com.mycom.main1;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.heava.my.HeavaDelete;
import com.heava.my.HeavaFindID;
import com.heava.my.HeavaFindPW;
import com.heava.my.HeavaGetAllInfo;
import com.heava.my.HeavaImpl;
import com.heava.my.HeavaInsert;
import com.heava.my.HeavaLogin_2;
import com.heava.my.HeavaMypage;
import com.heava.my.HeavaPasswordChange;
import com.heava.my.HeavaSearchone;
import com.heava.my.HeavaUpdate;
import com.heava.my.MdrMyReservation;
import com.heava.my.MdrPurchase;
import com.heava.my.ShaTest;

import smtp.SendProcess;
import telinfoDAO.TelInfoDAO;

/**
 * Servlet implementation class SawonFrontController
 */


@WebServlet("*.do") 
public class SawonFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SawonFrontController() {
		super();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");


		System.out.println(request.getRequestURI()); // ServletProject2/getAllInfo.do 
														
		System.out.println(request.getContextPath()); // ServletProject2 
														

		String c = request.getRequestURI().substring(request.getContextPath().length());
		

		String str = null;
		HeavaImpl h1 = null; 
		HeavaImpl h2 = null;
		switch (c) {
		case "/getAllInfo.do":
			h1 = new HeavaGetAllInfo();

			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "getAllInfo.jsp";
			break;

			
			
		case "/SawonSearchOne.do":
			h1 = new HeavaSearchone();
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "sawonUpdateForm.jsp";
			break;

			
			
		case "/UserDelete.do":
			h1 = new HeavaDelete(); // HeavaDelete.java
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "getAllInfo.jsp";
			break;
			
			
			
		case "/UserDelete1.do":
			h1 = new HeavaDelete(); // HeavaDelete.java
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "Nagari2.jsp";
			break;
			
			
			

		case "/telUpdate.do":
			h1 = new HeavaUpdate(); 
			try {
				h1.heava(request, response); 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			str = "relogin.jsp";
			break;
			
			
			

		case "/telInsert.do":
			h1 = new HeavaInsert();
			/* h2 = new ShaTest(); */
			
			try {
				h1.heava(request, response);
				/* h2.heava(request, response); */
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			str = "welcome.jsp";
			break;
			
			
		case "/UserFindID.do":
			
			h1 = new HeavaFindID();
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("userFindID 실행완료");
			str = "checkID.jsp";
			break;
			
			
			
		case "/UserFindPW.do":
			h1 = new HeavaFindPW();
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("userFindPW 실행완료");
			str = "checkPW.jsp";
			break;
			
			
			
		case "/mypage.do":
			h1 = new HeavaMypage();
			System.out.println("mypage?");
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "mypage.jsp";
			break;
			
			
		case "/userUpdate.do":
			h1 = new HeavaMypage();
			System.out.println("mypage?");
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "userUpdate.jsp";
			break;
			
			
			
		case "/UserLoginServlet1.do":
			h1 = new HeavaLogin_2();
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "main.jsp";
			break;	
	
			
		case "/newPW.do":
			System.out.println("새롭게 비번설정하기위해 컨트롤러로 도착은했구나.");
			h1 = new HeavaPasswordChange();
			try {
				h1.heava(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("컨트롤러에 또 왔니?");
			str = "checkPW.jsp";
			break;	
	
			
			
		   case "/Mdrpurchase.do":
	            
	            h1 = new MdrPurchase();
	            
	            try {
	               h1.heava(request, response);
	               
	            }catch(Exception e) {
	               e.printStackTrace();
	            }
	            
	            str = "reservation.jsp";
	            break;
	            
	            
		   case "/myReservation.do":
		         h1 = new MdrMyReservation();
		         System.out.println("myreserv?");
		         try {
		            h1.heava(request, response);
		         } catch (Exception e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		         }

		         str = "myReservation.jsp";
		         break;     
		         
		         
		         
		         
		    case "/SendProcess.do":
	            
	            h1 = new SendProcess();
	            
	            try {
	               h1.heava(request, response);
	               
	            }catch(Exception e) {
	               e.printStackTrace();
	            }
	            
	            str = "userRegister.jsp";
	            break;
		         
			
		}// switch-end

		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request, response);

	}

}
