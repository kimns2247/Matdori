package com.heava.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;


public class HeavaGetAllInfo implements HeavaImpl{

	
	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;
		
		tidao1 = new TelInfoDAO();
		ArrayList<UserInfoVO> alist1 = null;
		alist1 = tidao1.getAllInfo();
		request.setAttribute("alist1", alist1);
		
	} 
} 
