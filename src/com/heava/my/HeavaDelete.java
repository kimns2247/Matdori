package com.heava.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;


public class HeavaDelete implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;	
		boolean iv;	
		
		tidao1 = new TelInfoDAO();
		
		String loginID = request.getParameter("userID");
		
		System.out.println("딜리트페이지아이디는"+loginID);
		
		
		iv = tidao1.delete_name1(loginID);
		
		
	}
}
