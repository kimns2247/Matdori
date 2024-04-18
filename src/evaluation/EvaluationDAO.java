package evaluation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class EvaluationDAO {

	private Connection conn;	//db�� �����ϴ� ��ü
	private ResultSet rs;
	
	public EvaluationDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "hr";
			String dbPassword = "hr";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //�����ͺ��̽� ����
	}
	public int write(int bbsID, String ID,int likeEat, int sosoEat, int badEat) {
		String SQL = "INSERT INTO m_evaluation VALUES(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			pstmt.setString(2, ID);
			pstmt.setInt(3, likeEat);
			pstmt.setInt(4, sosoEat);
			pstmt.setInt(5, badEat);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	public ArrayList<Evaluation> whereList(int bbsID, String ID){
		String SQL = "SELECT * FROM m_evaluation WHERE bbsID = ? AND ID =?"; 
		ArrayList<Evaluation> list = new ArrayList<Evaluation>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			pstmt.setString(2, ID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Evaluation eva = new Evaluation();
				eva.setBbsID(rs.getInt(1));
				eva.setID(rs.getString(2));
				eva.setLikeEat(rs.getInt(3));
				eva.setSosoEat(rs.getInt(4));
				eva.setBadEat(rs.getInt(5));
				list.add(eva);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; //�����ͺ��̽� ����
	}
	
	public ArrayList<Evaluation> getList(int bbsID){
		String SQL = "SELECT * FROM m_evaluation WHERE bbsID = ?"; 
		ArrayList<Evaluation> list = new ArrayList<Evaluation>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Evaluation eva = new Evaluation();
				eva.setBbsID(rs.getInt(1));
				eva.setID(rs.getString(2));
				eva.setLikeEat(rs.getInt(3));
				eva.setSosoEat(rs.getInt(4));
				eva.setBadEat(rs.getInt(5));
				list.add(eva);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; //�����ͺ��̽� ����
	}
	
	public Evaluation getEvaluation(int bbsID) {
		String SQL = "SELECT * FROM m_evaluation WHERE bbsID = ?";
		ArrayList<Evaluation>list = new ArrayList<Evaluation>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  bbsID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Evaluation eva = new Evaluation();
				eva.setBbsID(rs.getInt(1));
				eva.setID(rs.getString(2));
				eva.setLikeEat(rs.getInt(3));
				eva.setSosoEat(rs.getInt(4));
				eva.setBadEat(rs.getInt(5));
				list.add(eva);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int bbsID, String ID,int likeEat, int sosoEat, int badEat) {
		String SQL = "UPDATE m_evaluation SET likeEat=?, sosoEat=?,badEat=? WHERE bbsID = ? AND ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, likeEat);
			pstmt.setInt(2, sosoEat);
			pstmt.setInt(3, badEat);
			pstmt.setInt(4, bbsID);
			pstmt.setString(5, ID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	
	public int delete(int bbsID, String ID) {
		String SQL = "DELETE FROM m_evaluation WHERE bbsID = ? AND ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			pstmt.setString(2, ID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
}