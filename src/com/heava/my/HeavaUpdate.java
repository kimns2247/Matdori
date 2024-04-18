package com.heava.my;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.UserInfoVO;

public class HeavaUpdate implements HeavaImpl{

	@Override
	public void heava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TelInfoDAO tidao1 = null;
		UserInfoVO iv =null;
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		String address4 = request.getParameter("address4");
		String salt = request.getParameter("salt");
		
		System.out.println(id);
		System.out.println(password);
		System.out.println(name);
		System.out.println(birth);
		
		String id1 = request.getParameter("id");
		
		tidao1 = new TelInfoDAO();
		
		tidao1.update_all(id, password, name, birth, gender,email, address1,address2,address3,address4, salt, id1);
		
		
	}
}
