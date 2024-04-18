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
		
		//1. Random, byte ��ü ����
		SecureRandom  r = new SecureRandom ();
		byte[] salt = new byte[20];
		
		//2. ���� ����
		r.nextBytes(salt);
		
		//3. byte To String (10������ ���ڿ��� ����)
		StringBuffer sb = new StringBuffer();
		for(byte b : salt) {
			sb.append(String.format("%02x", b));
		};
		
		return sb.toString();
	}
	
	public String getEncrypt(String pwd, String salt) {
		
		String result = "";
		try {
			//1. SHA256 �˰��� ��ü ����
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			//2. ��й�ȣ�� salt ��ģ ���ڿ��� SHA 256 ����
			System.out.println("��й�ȣ + salt ���� �� : " + pwd+salt);
			md.update((pwd+salt).getBytes());
			byte[] pwdsalt = md.digest();
			
			//3. byte To String (10������ ���ڿ��� ����)
			StringBuffer sb = new StringBuffer();
			for (byte b : pwdsalt) {
				sb.append(String.format("%02x", b));
			}
			
			result=sb.toString();
			System.out.println("��й�ȣ + salt ���� �� : " + result);
			
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
      
      
     System.out.println("�Է¹�����й�ȣ"+password);


      String res = en.getEncrypt(password, salt);
      
      System.out.println("��й�ȣ�� ��Ʈ�� ���յ� �� "+res);
      
      TelInfoDAO tidao = null;
      tidao = new TelInfoDAO();
      ses2.setAttribute("sesname", name);
      ses3.setAttribute("sesid", id);
      tidao.insert_nametel(id, res, name, birth, gender, email, address1, address2, address3, address4, salt);
       
	
   }
   
      
  } 
    // heava  
  // HeavaInsert  