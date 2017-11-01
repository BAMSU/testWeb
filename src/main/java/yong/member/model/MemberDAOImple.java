package yong.member.model;

import java.sql.*;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	private SqlSessionTemplate sqlMap;

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<MemberDTO> memberList() {
		List<MemberDTO> arr = sqlMap.selectList("memberList");
		return arr;
	}

	public int memberJoin(MemberDTO dto) {
		try {

			conn = yong.db.YongDb.getConn();

			String sql = "insert into jsp_member values(jsp_member_idx.nextval, ?, ?, ?, ?, ?, sysdate)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getTel());
			ps.setString(5, dto.getAddr());

			int result = ps.executeUpdate();

			return result;

		} catch (Exception e) {
			e.printStackTrace();
			return -1;

		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public boolean idCheck(String id) {

		try {
			conn = yong.db.YongDb.getConn();

			String sql = "select id from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);

			rs = ps.executeQuery();
			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
	
	/** 로그인 관련 메서드 */
	public int member_login(String member_id, String member_pwd) {
		try {
			conn = yong.db.YongDb.getConn();

			String sql = "select * from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, member_id);

			int count = ps.executeUpdate();

			if (count == 0) {
				return 1;
			} else {
				sql = "select * from jsp_member where pwd=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, pwd);

				rs = ps.executeQuery();

				if (rs.next()) {
					return 3;
				} else {
					return 2;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	/** 이름 가져오기 */
	public String getUserInfo(String id) {
		try {
			conn = yong.db.YongDb.getConn();

			String name = "";
			String sql = "select name from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);

			rs = ps.executeQuery();
			while (rs.next()) {
				name = rs.getString("name");
			}
			return name;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

}
