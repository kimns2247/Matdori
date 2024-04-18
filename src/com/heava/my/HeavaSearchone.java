package com.heava.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaSearchone implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;
		UserInfoVO iv = null;
		
		tidao1 = new TelInfoDAO();
		
		String name = request.getParameter("name");
		
		iv = tidao1.getInfo(name);
		
		request.setAttribute("sname", name);
		request.setAttribute("stv", iv);
		
	}  
}
