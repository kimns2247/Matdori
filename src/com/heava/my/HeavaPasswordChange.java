package com.heava.my;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;


public class HeavaPasswordChange implements HeavaImpl{
	
	
public String getSalt() {
		
		SecureRandom  r = new SecureRandom ();
		byte[] salt = new byte[20];
		
		
		r.nextBytes(salt);
		
	
		StringBuffer sb = new StringBuffer();
		for(byte b : salt) {
			sb.append(String.format("%02x", b));
		};
		
		return sb.toString();
	}
	
	public String getEncrypt(String pwd, String salt) {
		
		String result = "";
		try {
		
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			
			md.update((pwd+salt).getBytes());
			byte[] pwdsalt = md.digest();
			
			
			StringBuffer sb = new StringBuffer();
			for (byte b : pwdsalt) {
				sb.append(String.format("%02x", b));
			}
			
			result=sb.toString();
			
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
		int iv1;
		
		tidao1 = new TelInfoDAO();
			
		 ShaTest en = new ShaTest();
	     String salt = en.getSalt();
	     
	     System.out.println("새롭게 생성된 salt값 :"+salt );
		
		
		String id = request.getParameter("id");	
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("newPW");
		
		
		System.out.println("비밀번호 찾기위해 사용자가 입력한 아이디 :"+ id);
		System.out.println("비밀번호 찾기위해 사용자가 입력한 이메일:"+ email);
		System.out.println("비밀번호 찾기위해 사용자가 입력한 이름 :"+ name);
		System.out.println("비밀번호 바꾸기 위해 입력한 비밀번호 :"+ password);
			
		
		 String NewPW = en.getEncrypt(password, salt);
		      
		 System.out.println("새롭게 솔트값과 섞은 비밀번호 :  "+NewPW);
		 
		 
		iv1 = tidao1.newPw(NewPW, salt, id, email, name);
		
		request.setAttribute("fid", iv1);
		
		
	} 

}
