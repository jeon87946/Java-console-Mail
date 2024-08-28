package kr.ac.kopo.mail.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.mail.vo.MailVO;
import kr.ac.kopo.member.vo.MemberVO;

public class MailDAO {
	private List<MailVO> list;

	public MailDAO() {
	}

	public void insert(MailVO mail) {
		StringBuilder sql = new StringBuilder();
		sql.append(" INSERT INTO tbl_mail(title, writer, dear, msg) ");
		sql.append(" VALUES(?, ? , ?, ?) ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString())) {
			pstmt.setString(1, mail.getTitle());
			pstmt.setString(2, mail.getWriter());
			pstmt.setString(3, mail.getDear());
			pstmt.setString(4, mail.getMsg());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ���� ������
	public List<MailVO> Inbox(MemberVO loginVO) {

		List<MailVO> list = new ArrayList<>();

		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT * ");
		sql.append(" FROM tbl_mail ");
		sql.append(" WHERE dear = ? ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			pstmt.setString(1, loginVO.getId());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String dear = rs.getString("dear");
				String msg = rs.getString("msg");

				MailVO mail = new MailVO(title, writer, dear, msg);
				list.add(mail);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// ���� ������

	public List<MailVO> Outbox(MemberVO loginVO) {

		List<MailVO> list = new ArrayList<>();

		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT * ");
		sql.append(" FROM tbl_mail ");
		sql.append(" WHERE writer = ? ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			pstmt.setString(1, loginVO.getId());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String dear = rs.getString("dear");
				String msg = rs.getString("msg");

				MailVO mail = new MailVO(title, writer, dear, msg);
				list.add(mail);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

//	���� �� ������
	public List<MailVO> writeme(MemberVO loginVO) {

		List<MailVO> list = new ArrayList<>();

		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT * ");
		sql.append(" FROM tbl_mail ");
		sql.append(" WHERE writer = ? and dear = ? ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			pstmt.setString(1, loginVO.getId());
			pstmt.setString(2, loginVO.getId());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String dear = rs.getString("dear");
				String msg = rs.getString("msg");

				MailVO mail = new MailVO(title, writer, dear, msg);
				list.add(mail);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}