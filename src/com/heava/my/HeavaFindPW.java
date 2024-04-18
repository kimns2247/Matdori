package com.heava.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaFindPW implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao2 = null;	
		UserInfoVO iv2 = null;	
		
		tidao2 = new TelInfoDAO();
			
		String id = request.getParameter("id");
		String email = request.getParameter("email");	
		String name = request.getParameter("name");	
		System.out.println(id);
		System.out.println(email);
		System.out.println(name);
		iv2 = tidao2.getInfo3(id, email, name);

		
		request.setAttribute("sname", id);
		request.setAttribute("fpw", iv2);
		
	} 
}
