package Login;
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
		System.out.println("pwd : "+ pwd);
		
		
		String salt = en.getSalt();
		System.out.println("salt : "+salt);
		
		
		String res = en.getEncrypt(pwd, salt);
	}

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
			
			
			System.out.println(" : " + pwd+salt);
			md.update((pwd+salt).getBytes());
			byte[] pwdsalt = md.digest();
			
			
			StringBuffer sb = new StringBuffer();
			for (byte b : pwdsalt) {
				sb.append(String.format("%02x", b));
			}
			
			result=sb.toString();
			System.out.println(" : " + result);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		return result;
	}
}
