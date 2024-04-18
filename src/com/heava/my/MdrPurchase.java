package com.heava.my;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MdrDAO.MdrDAO;


public class MdrPurchase implements HeavaImpl {

   @Override
   public void heava(HttpServletRequest request,HttpServletResponse response)throws Exception{
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      
      String  name = request.getParameter("name");
      String  merchant_uid = request.getParameter("merchant_uid");
      String  pg = request.getParameter("pg");
      String  rsvDate = request.getParameter("rsvDate");
      String  rsvTime = request.getParameter("rsvTime");
      String  peopleCnt = request.getParameter("peopleCnt");
      String  userID = request.getParameter("userID");
      
      
      System.out.println(userID);
      
      MdrDAO tidao = new MdrDAO();
      tidao.insert_reservation(name , merchant_uid, pg, rsvDate, rsvTime, peopleCnt, userID );
   
    }//haeva-end
}//class HaevaInsert-end