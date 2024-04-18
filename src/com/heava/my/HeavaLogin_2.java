package com.heava.my;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaLogin_2 implements HeavaImpl{

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
	
	public String getEncrypt(String loginPassword, String salt1) {
		
		String result = "";
		try {
			//1. SHA256 �˰��� ��ü ����
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			System.out.println("Encrypt�γѾ��"+salt1);
			
			//2. ��й�ȣ�� salt ��ģ ���ڿ��� SHA 256 ����
			System.out.println("��й�ȣ���ٰ� salt ���� �� : " + loginPassword+salt1);
			md.update((loginPassword+salt1).getBytes());
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
		
		TelInfoDAO tidao1 = null;	
		UserInfoVO iv = null;	
		 ShaTest st = new ShaTest();
		 
		tidao1 = new TelInfoDAO();
		
				
		String loginID = request.getParameter("loginID");	 
		String loginPassword = request.getParameter("loginPassword");
		
		
		
		System.out.println("��ٷα���2 �Է¾��̵� "+loginID);
		System.out.println("��ٷα���2 �Էº�� "+loginPassword);
		
		
		 HttpSession ses1 = null;
	     ses1 = request.getSession();
	     ses1.setAttribute("sessionID", loginID);
		

		
		iv = tidao1.getmypage(loginID);
		String salt1 = iv.getSalt();
		System.out.println(loginID+" ���̵𿡵��� ��Ʈ�� : "+salt1);
		// ID���� ���� ��Ʈ���� �̾Ƴ���
		// �׷� ������ ������? ��Ʈ���� �Է¹��� ��й�ȣ�� ���ո� �ϸ��.
		
		 String pw = st.getEncrypt(loginPassword, salt1);	
		 System.out.println("salt���� ����� ������ �� : "+pw);
		 
		 
		 int result = tidao1.login_mdr(loginID,pw);
		 System.out.println("result��"+result);

		 
		 
		request.setAttribute("fid", iv);
		

		
		
	} 
}