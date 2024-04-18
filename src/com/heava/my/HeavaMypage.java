package com.heava.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaMypage implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {


		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;	
		UserInfoVO iv = null;	
		
		tidao1 = new TelInfoDAO();
			
		
		String loginID = request.getParameter("userID");	  
		
		System.out.println("헤바마이페이지아이디는"+loginID);
		
		iv = tidao1.getmypage(loginID);
			

		request.setAttribute("fid", iv);
		
	} 
}