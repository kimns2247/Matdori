package telinfoDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import telinfoDBConn.TelInfoDBConn;
import telinfoVO.UserInfoVO;

//DAO 

public class TelInfoDAO {

	private Connection con;			
	
	PreparedStatement pstmt=null;
	PreparedStatement pstmt2=null;
	
	ResultSet rs=null;				
	
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException {
		con=new TelInfoDBConn().getConnection(); 
											  											
	} 

	public int 
	       insert_nametel(String id,String pw,String name,String birth,String gender,
	         String email,String address1,String address2,String address3,String address4,String salt1) {
	      String sql="insert into Login values(?,?,?,?,?,?,?,?,?,?,?)";
	      try {
	         pstmt=con.prepareStatement(sql);
	         pstmt.setString(1, id);
	         pstmt.setString(2, pw);
	         pstmt.setString(3, name);
	         pstmt.setString(4, birth);
	         pstmt.setString(5, gender);
	         pstmt.setString(6, email);
	         pstmt.setString(7, address1);
	         pstmt.setString(8, address2);
	         pstmt.setString(9, address3);
	         pstmt.setString(10, address4);
	         pstmt.setString(11, salt1);
	        
	         
	         System.out.println("salt1의 값:"+salt1);
	         System.out.println(id);
	         System.out.println(pw);
	         System.out.println(name);
	         System.out.println(birth);
	         System.out.println(gender);
	         System.out.println(email);
	         System.out.println(address1);
	         System.out.println(address2);
	         System.out.println(address3);
	         System.out.println(address4);
	         System.out.println(salt1);
	         
	         
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         System.out.println("Insert Exception");
	         return 0;
	         
	      }
	      return 1;
	   }
	
	
	
	
	public boolean update_all
	(String id,String password,String name,String birth,String gender,
	         String email,String address1,String address2,String address3,String address4, String salt ,String id1) {
	
		String sql="update Login set id=?, password=?, name=?, birth=?, gender=?, email=?, address0=?, address1=?, address2=?, address3=? ,salt = ?"
				       + " where id=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, birth);
			pstmt.setString(5, gender);
			pstmt.setString(6, email);
			pstmt.setString(7, address1);
			pstmt.setString(8, address2);
			pstmt.setString(9, address3);
			pstmt.setString(10, address4);
			pstmt.setString(11, salt);
			pstmt.setString(12, id1);
			pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			System.out.println("Update Exception");
			return false;
		}
		return true;
	}
	
	
	
	
	public boolean delete_name(String name) {
		String sql="delete from Login where name=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Delete Exception");
			return false;
		}
		return true;
	} 
	
	
	public boolean delete_name1(String id) {
		String sql="delete from Login where id=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Delete Exception");
			return false;
		}
		return true;
	} 
	
		
	
	public int login_mdr(String loginID,String loginPassword) {
	      String sql = "SELECT password from Login WHERE id  = ?";
	      System.out.println("로그인_mdr DAO에서 받은 ID "+loginID);
	      System.out.println("로그인_mdr DAO에서 받은 비밀번호 "+loginPassword);
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, loginID);
	         rs = pstmt.executeQuery();
	                  
	         if(rs.next()) {
		            if(rs.getString(1).equals(loginPassword)) {
		            	System.out.println("일치함?");
		               return 1;
		            }
		         }else {
		        	 System.out.println("일치함?0");
		            return 0;   
		         }
		         System.out.println("일치함?-1");  
		         return -1;
		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		      }
		      System.out.println("일치함?-2");
		      return -2;
	      
	   }
	

	
	public ArrayList<UserInfoVO> getAllInfo() throws SQLException{
		ArrayList<UserInfoVO> tiarray=new ArrayList<UserInfoVO>();
		String sql="select * from Login order by id";
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			String id=rs.getString("id");
			String password=rs.getString("password");
			String name=rs.getString("name");
			String birth=rs.getString("birth");
			String gender=rs.getString("gender");
			String email=rs.getString("email");
			String address1=rs.getString("address0");
			String address2=rs.getString("address1");	
			String address3=rs.getString("address2");	
			String address4=rs.getString("address3");	
			String salt=rs.getString("salt");		
			
			UserInfoVO iv=new UserInfoVO(id,password,name,birth,gender,email,address1,address2,address3,address4, salt);
			
			tiarray.add(iv);
			
		}//while-end
		return tiarray;
	}

	
	
	
	public UserInfoVO getInfo(String oriname)			
			throws SQLException{
	UserInfoVO iv=null;
	String sql = "SELECT * FROM Login where name=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, oriname);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String id=rs.getString("id");
		String password=rs.getString("password");
		String name=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String email=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv=new UserInfoVO(id,password,name,birth,gender,email,address1,address2,address3,address4, salt);
			
	}else { 
		iv=null;	// null (return null) 
		}
	return iv;		
	}

	
	
	
	public UserInfoVO getInfo2(String name, String email)			
			throws SQLException{
	UserInfoVO iv=null;
	String sql = "SELECT * FROM Login where name = ? and email=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, email);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String id=rs.getString("id");
		String password=rs.getString("password");
		String fname=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String mail=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv=new UserInfoVO(id,password,fname,birth,gender,mail,address1,address2,address3,address4, salt);
			
	}else { 
		iv=null;	// null (return null) 
		System.out.println(iv);
		}
	return iv;		
	}
	
	
	
	public UserInfoVO getInfo3(String id, String email, String name)			
			throws SQLException{
	UserInfoVO iv2=null;
	String sql = "SELECT * FROM Login where id=? and email = ? and name = ?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, email);
	pstmt.setString(3, name);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String uid=rs.getString("id");
		String password=rs.getString("password");
		String uname=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String mail=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv2=new UserInfoVO(uid,password,uname,birth,gender,mail,address1,address2,address3,address4, salt);
			
	}else { 
		iv2=null;	// null (return null) 
		}
	return iv2;		
	}
	
	
	public UserInfoVO getInfo4(String id)			
			throws SQLException{
	UserInfoVO iv2=null;
	String sql = "SELECT * FROM Login where id=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String uid=rs.getString("id");
		String password=rs.getString("password");
		String name=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String mail=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv2=new UserInfoVO(uid,password,name,birth,gender,mail,address1,address2,address3,address4, salt);
			
	}else { 
		iv2=null;	// null (return null) 
		}
	return iv2;		
	}
	
	
	
	public int registerCheck(String checkid) { 
		String sql = "SELECT * FROM login WHERE id = ?";		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, checkid);
			rs = pstmt.executeQuery();
			if(checkid.equals("")) {
				return 0;
			}else if(rs.next() || checkid.equals("")){
				return -1; 
		}else{
				return 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -2;
	}
	
	
	public UserInfoVO getmypage(String loginID)			
			throws SQLException{
	
	UserInfoVO iv=null;
	String sql = "SELECT * FROM Login where id = ?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, loginID);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String id=rs.getString("id");
		String password=rs.getString("password");
		String fname=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String mail=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv=new UserInfoVO(id,password,fname,birth,gender,mail,address1,address2,address3,address4, salt);
			
	}else { 
		iv=null;
					// null (return null) 
		}
	return iv;		
	}
	
	
	
	public UserInfoVO getlogin(String loginID)			
			throws SQLException{
	UserInfoVO iv=null;
	String sql = "SELECT * FROM Login where id=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, loginID);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String id=rs.getString("id");
		String password=rs.getString("password");
		String name=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String email=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv=new UserInfoVO(id,password,name,birth,gender,email,address1,address2,address3,address4, salt);
			
	}else { 
		iv=null;	// null (return null) 
		}
	return iv;		
	}
	
	
	
	public int newPw(String NewPW ,String salt, String id, String email, String name) {
	      String sql="update login set password=? , salt = ? where id=? and email = ? and name =?";
	      String sql2 = "SELECT * FROM login where id = ? and email = ? and name = ?";
	               
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt2 = con.prepareStatement(sql2);
	         
	         pstmt2.setString(1, id);
	         pstmt2.setString(2, email);
	         pstmt2.setString(3, name);
	         rs = pstmt2.executeQuery();
	         
	         if(rs.next()) {
	         
	         pstmt.setString(1, NewPW);
	         pstmt.setString(2, salt);
	         pstmt.setString(3, id);
	         pstmt.setString(4, email);
	         pstmt.setString(5, name);
	         pstmt.executeUpdate();
	         
	         
	         System.out.println("다오" + name);
	         System.out.println(id);
	         System.out.println(salt);
	         System.out.println(email);
	         System.out.println(NewPW);
	         }
	         else {
	            return -2;
	         }
	      } catch (SQLException e) {
	         System.out.println("다오를 통해서 비밀번호 업데이트가 완료되지않았어 ㅜㅜ");
	         return -1;
	      }
	      System.out.println("다오를 통해서 비밀번호 업데이트가 완료되었어!");
	      return 1;
	   }
	
	
	
	
		/*
		 * public boolean newPw(String NewPW ,String salt, String id, String email,
		 * String name) {
		 * 
		 * String
		 * sql="update login set password=? , salt = ? where id=? and email = ? and name =?"
		 * ;
		 * 
		 * try { pstmt = con.prepareStatement(sql); pstmt.setString(1, NewPW);
		 * pstmt.setString(2, salt); pstmt.setString(3, id); pstmt.setString(4, email);
		 * pstmt.setString(5, name); pstmt.executeUpdate();
		 * 
		 * System.out.println("다오" + name); System.out.println(id);
		 * System.out.println(salt); System.out.println(email);
		 * System.out.println(NewPW);
		 * 
		 * } catch (SQLException e) {
		 * System.out.println("다오를 통해서 비밀번호 업데이트가 완료되지않았어 ㅜㅜ"); return false; }
		 * System.out.println("다오를 통해서 비밀번호 업데이트가 완료되었어!"); return true; }
		 */

	
	public UserInfoVO findID(String name, String email)			
			throws SQLException{
	UserInfoVO iv=null;
	UserInfoVO iv2=null;
	String sql = "SELECT * FROM Login where name = ? and email=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, email);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		String id=rs.getString("id");
		String password=rs.getString("password");
		String fname=rs.getString("name");
		String birth=rs.getString("birth");
		String gender=rs.getString("gender");
		String mail=rs.getString("email");
		String address1=rs.getString("address0");
		String address2=rs.getString("address1");	
		String address3=rs.getString("address2");	
		String address4=rs.getString("address3");	
		String salt=rs.getString("salt");	
		
		iv=new UserInfoVO(id,password,fname,birth,gender,mail,address1,address2,address3,address4, salt);	
	}else { 
		return iv2;
		}
	return iv;		
	}
	
	
	
} //TelInfoDAO  -end









