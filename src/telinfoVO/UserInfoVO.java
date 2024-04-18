package telinfoVO;

import java.util.Date;

public class UserInfoVO {

   private String id;      // varchar2(50),
   private String password;   // varchar2(50),
   private String name;      // varchar2(50),
   private String birth;         // date
   private String gender;  //  varchar2(10),
   private String Email;    //  varchar2(50),
   private String address1;    //   varchar2(50)
   private String address2;
   private String address3;
   private String address4;
   private String salt;

   
public UserInfoVO(String id, String password, String name, String birth, String gender, String email, 
            String address1,String address2,String address3,String address4, String salt) {
   super();
   this.id = id;
   this.password = password;
   this.name = name;
   this.birth = birth;
   this.gender = gender;
   Email = email;
   this.address1 = address1;
   this.address2 = address2;
   this.address3 = address3;
   this.address4 = address4;
   this.salt = salt;
}



public UserInfoVO() { }



public String getId() {
	return id;
}



public void setId(String id) {
	this.id = id;
}



public String getPassword() {
	return password;
}



public void setPassword(String password) {
	this.password = password;
}



public String getName() {
	return name;
}



public void setName(String name) {
	this.name = name;
}



public String getBirth() {
	return birth;
}



public void setBirth(String birth) {
	this.birth = birth;
}



public String getGender() {
	return gender;
}



public void setGender(String gender) {
	this.gender = gender;
}



public String getEmail() {
	return Email;
}



public void setEmail(String email) {
	Email = email;
}



public String getAddress1() {
	return address1;
}



public void setAddress1(String address1) {
	this.address1 = address1;
}



public String getAddress2() {
	return address2;
}



public void setAddress2(String address2) {
	this.address2 = address2;
}



public String getAddress3() {
	return address3;
}



public void setAddress3(String address3) {
	this.address3 = address3;
}



public String getAddress4() {
	return address4;
}



public void setAddress4(String address4) {
	this.address4 = address4;
}



public String getSalt() {
	return salt;
}



public void setSalt(String salt) {
	this.salt = salt;
}




}

