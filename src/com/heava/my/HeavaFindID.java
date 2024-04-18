package com.heava.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaFindID implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;	
		UserInfoVO iv = null;	
		
		tidao1 = new TelInfoDAO();	
		
			
		String email = request.getParameter("email");	
		String name = request.getParameter("name");	
		System.out.println(name);
		System.out.println(email);
		
		iv = tidao1.getInfo2(name, email);
		
		
		request.setAttribute("fid", iv);
		
		
	} 
}
