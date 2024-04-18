package com.heava.my;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import telinfoDAO.TelInfoDAO;


public class HeavaInsert implements HeavaImpl{

	public String getSalt() {
		
		//1. Random, byte 객체 생성
		SecureRandom  r = new SecureRandom ();
		byte[] salt = new byte[20];
		
		//2. 난수 생성
		r.nextBytes(salt);
		
		//3. byte To String (10진수의 문자열로 변경)
		StringBuffer sb = new StringBuffer();
		for(byte b : salt) {
			sb.append(String.format("%02x", b));
		};
		
		return sb.toString();
	}
	
	public String getEncrypt(String pwd, String salt) {
		
		String result = "";
		try {
			//1. SHA256 알고리즘 객체 생성
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			//2. 비밀번호와 salt 합친 문자열에 SHA 256 적용
			System.out.println("비밀번호 + salt 적용 전 : " + pwd+salt);
			md.update((pwd+salt).getBytes());
			byte[] pwdsalt = md.digest();
			
			//3. byte To String (10진수의 문자열로 변경)
			StringBuffer sb = new StringBuffer();
			for (byte b : pwdsalt) {
				sb.append(String.format("%02x", b));
			}
			
			result=sb.toString();
			System.out.println("비밀번호 + salt 적용 후 : " + result);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		return result;
	}   
	
	
	
   @Override
   public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      
      HttpSession ses2 = null;
      HttpSession ses3 = null;
      ses2 = request.getSession();
      ses3 = request.getSession();
      ShaTest en = new ShaTest();
      
      
      
      String salt = en.getSalt();
      
      
      String id = request.getParameter("id");
      String password = request.getParameter("pw");
      String name = request.getParameter("name");
      String birth = request.getParameter("birth");
      String gender = request.getParameter("gender");
      String email = request.getParameter("email");
      String address1 = request.getParameter("address1");
      String address2 = request.getParameter("address2");
      String address3 = request.getParameter("address3");
      String address4 = request.getParameter("address4");
      
      
     System.out.println("입력받은비밀번호"+password);


      String res = en.getEncrypt(password, salt);
      
      System.out.println("비밀번호와 쏠트가 조합된 값 "+res);
      
      TelInfoDAO tidao = null;
      tidao = new TelInfoDAO();
      ses2.setAttribute("sesname", name);
      ses3.setAttribute("sesid", id);
      tidao.insert_nametel(id, res, name, birth, gender, email, address1, address2, address3, address4, salt);
       
	
   }
   
      
  } 
    // heava  
  // HeavaInsert  