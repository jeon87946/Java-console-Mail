package kr.ac.kopo.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.member.vo.MemberVO;

public class MemberDAO {
	
	public MemberDAO() {
	}

	public void insert(MemberVO member) throws Exception {
		StringBuilder sql = new StringBuilder();
		sql.append(" INSERT INTO tbl_member(id, pwd, name, callno) ");
		sql.append(" VALUES(?, ?, ?, ?) ");
		
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		){
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getcallno());
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
// �α���	
	public MemberVO search(String id, String pwd) {
		StringBuilder sql = new StringBuilder();
		sql.append(" select * ");
		sql.append(" from tbl_member ");
		sql.append(" WHERE id = ? AND pwd = ? ");
		
		MemberVO member = null;
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String mid = rs.getString("id");
				String mpwd = rs.getString("pwd");
				String mname = rs.getString("name");
				String mcallno = rs.getString("callno");
			
			MemberVO loginVO = new MemberVO(mid, mpwd, mname, mcallno);
			loginVO.setId(mid);
			loginVO.setPwd(mpwd);
			loginVO.setName(mname);
			loginVO.setcallno(mcallno);
			
			return loginVO;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
//	���̵� ã��
	public MemberVO findid(String name, String callno) {
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select * ");
		sql.append(" from tbl_member ");
		sql.append(" WHERE name = ? AND callno = ? ");
		MemberVO findid = null;
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			) {
				pstmt.setString(1, name);
				pstmt.setString(2, callno);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					name = rs.getString("name");
					callno = rs.getString("callno");				
					String id = rs.getString("id");
					String pwd = rs.getString("pwd");
					findid = new MemberVO(id, pwd, name, callno);
					
				}
			} catch(Exception e) {
				e.printStackTrace();
		}
		return findid;
	}
	
// ��й�ȣ ã��
	public MemberVO findpwd(String id, String name, String callno) {
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select * ");
		sql.append(" from tbl_member ");
		sql.append(" WHERE id = ? AND name = ? AND callno = ? ");
		MemberVO findid = null;
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			) {
				pstmt.setString(1, id);
				pstmt.setString(2, name);
				pstmt.setString(3, callno);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					name = rs.getString("name");
					callno = rs.getString("callno");				
					id = rs.getString("id");
					String pwd = rs.getString("pwd");
					findid = new MemberVO(id, pwd, name, callno);
					
				}
			} catch(Exception e) {
				e.printStackTrace();
		}
		return findid;
	}
//	��й�ȣ ����
	public void pchange(String id, String pwd) {
			StringBuilder sql = new StringBuilder();
			sql.append(" update tbl_member ");
			sql.append(" set pwd = ? "); 
			sql.append(" where id = ? ");
			MemberVO pchange = null;
			
			try(
					Connection conn = new ConnectionFactory().getConnection();
					PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				) {
					pstmt.setString(1, pwd);
					pstmt.setString(2, id);
					
					pstmt.executeUpdate();
				} catch(Exception e) {
					e.printStackTrace();
		}
			
	}	
		
//	���̵� ����
	public void ichange(String id, String callno) {
		StringBuilder sql = new StringBuilder();
		sql.append(" update tbl_member ");
		sql.append(" set callno = ? "); 
		sql.append(" where id = ? ");
		MemberVO ichange = null;
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			) {
			pstmt.setString(1, callno);
			pstmt.setString(2, id);
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
//	���̵� �ߺ� üũ
	public String searchid(String id) {
		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT * ");
		sql.append(" from tbl_member ");
		sql.append(" where id = ? ");
		String yid = null;		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				) {
				pstmt.setString(1, id);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					yid = rs.getString("id");
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		return yid;
	}
	
//	ȸ�� Ż��
	
	public MemberVO memberout(String id) {
		StringBuilder sql = new StringBuilder();
		sql.append(" DELETE FROM tbl_member ");
		sql.append(" WHERE id = ? ");
		MemberVO member = null;
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			) {
				pstmt.setString(1, id);				
				pstmt.executeUpdate();
				
				} catch(Exception e) {
					e.printStackTrace();
				}
		return member;
	}
}