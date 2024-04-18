package com.heava.my;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShaTest implements HeavaImpl {
	
	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ShaTest en = new ShaTest();
		
		String pwd = request.getParameter("password");
		System.out.println("���׽�Ʈpwd : "+ pwd);
		
		//Salt ����
                // ���� �������� Salt���� �����Ͽ�����, ���� ������ ������Ű�ų� Salt���� ������ �ξ���մϴ�.
		String salt = en.getSalt();
		System.out.println("salt : "+salt);
		
		//���� ��й�ȣ ����
		String res = en.getEncrypt(pwd, salt);
	}

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
}
