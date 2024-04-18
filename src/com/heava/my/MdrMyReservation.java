package com.heava.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MdrDAO.MdrDAO;
import MdrVO.MerInfoVO;

public class MdrMyReservation implements HeavaImpl{

	   @Override
	   public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {


	      request.setCharacterEncoding("UTF-8");
	      response.setCharacterEncoding("UTF-8");
	      
	      MdrDAO tidao1 = null;   
	      tidao1 = new MdrDAO();
	      
	      ArrayList<MerInfoVO> mlist1 = null;   
	      
	      String loginID = request.getParameter("userID");     

	      mlist1 = tidao1.getmyReserv(loginID);   
	   
	      request.setAttribute("myRes", mlist1);
	      
	   } 
	}