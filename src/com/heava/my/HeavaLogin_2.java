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
	
	public String getEncrypt(String loginPassword, String salt1) {
		
		String result = "";
		try {
			//1. SHA256 알고리즘 객체 생성
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			System.out.println("Encrypt로넘어온"+salt1);
			
			//2. 비밀번호와 salt 합친 문자열에 SHA 256 적용
			System.out.println("비밀번호에다가 salt 적용 전 : " + loginPassword+salt1);
			md.update((loginPassword+salt1).getBytes());
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
		
		TelInfoDAO tidao1 = null;	
		UserInfoVO iv = null;	
		 ShaTest st = new ShaTest();
		 
		tidao1 = new TelInfoDAO();
		
				
		String loginID = request.getParameter("loginID");	 
		String loginPassword = request.getParameter("loginPassword");
		
		
		
		System.out.println("헤바로그인2 입력아이디 "+loginID);
		System.out.println("헤바로그인2 입력비번 "+loginPassword);
		
		
		 HttpSession ses1 = null;
	     ses1 = request.getSession();
	     ses1.setAttribute("sessionID", loginID);
		

		
		iv = tidao1.getmypage(loginID);
		String salt1 = iv.getSalt();
		System.out.println(loginID+" 아이디에따른 솔트값 : "+salt1);
		// ID값에 따른 솔트값은 뽑아냈음
		// 그럼 다음에 할일은? 솔트값과 입력받은 비밀번호를 조합만 하면됨.
		
		 String pw = st.getEncrypt(loginPassword, salt1);	
		 System.out.println("salt값과 비번이 합쳐진 값 : "+pw);
		 
		 
		 int result = tidao1.login_mdr(loginID,pw);
		 System.out.println("result값"+result);

		 
		 
		request.setAttribute("fid", iv);
		

		
		
	} 
}