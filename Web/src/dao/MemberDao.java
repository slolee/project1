package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.MemberDto;

public class MemberDao {
	// DAO : DB 접근객체
	
	private Connection conn;
	private ResultSet rs;
	
	public MemberDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?serverTimezone=UTC" , "root" , "7624");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	private static MemberDao instance = new MemberDao();
	
	public static MemberDao getinstance() { return instance; }
	
	
	//로그인 메소드 
	public int login( String ID, String Password) {
		
		String SQL = "select * from member where id = ? and password = ?";
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1,ID);
		pstmt.setString(2,Password);
		
		rs = pstmt.executeQuery();
		
		if ( rs.next() ) {
			return 1;
		}
		return 2;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
		
	}
	
	
	// 회원가입 메소드 
	
	public int signup ( MemberDto dto) {
		
		String SQL = "insert into member values(?,?,?,?,?,?,?,?,?)";
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1,dto.getId());
		pstmt.setString(2,dto.getPassword());
		pstmt.setString(3,dto.getName());
		pstmt.setString(4,dto.getGender());
		pstmt.setString(5,dto.getBirth());
		pstmt.setString(6,dto.getMail());
		pstmt.setString(7,dto.getPhone());
		pstmt.setString(8,dto.getAddress());
		pstmt.setString(9,dto.getRegist_day());
		
		pstmt.executeUpdate(); // insert, update, DELETE => SQL 실행
		
		
			return 1;
		}
		catch (Exception e) {
		
		}
		return -1;
		
		
	}
	
	public MemberDto getmember (String logid) {
		String SQL = "select * from member where id = ? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				MemberDto memberDto = new MemberDto();
				
				memberDto.setId(rs.getString(1));
				memberDto.setPassword(rs.getString(2));
				memberDto.setName(rs.getString(3));
				memberDto.setGender(rs.getString(4));
				memberDto.setBirth(rs.getString(5));
				memberDto.setMail(rs.getString(6));
				memberDto.setPhone(rs.getString(7));
				memberDto.setAddress(rs.getString(8));
				memberDto.setRegist_day(rs.getString(9));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public int delete (String logid) {
		
		String SQL = "delete form member where id=? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, logid);
			pstmt.executeUpdate();
			return 1;
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
		
		
		
		
	}
	public int update (String logid , MemberDto dto ) {
		String SQL = " update member set password=? , name=? , gender=? , birth=?, mail=?, phone=?,address=? where id = logid ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getBirth());
			pstmt.setString(5, dto.getMail());
			pstmt.setString(6, dto.getPhone());
			pstmt.setString(7, dto.getAddress());
			pstmt.setString(8, logid);
			
			pstmt.executeUpdate();
			
			return 1;
			}
			
		catch (Exception e) {
			// TODO: handle exception
		}
		return 1;
	}
	// 회원탈퇴 메소드 

}
