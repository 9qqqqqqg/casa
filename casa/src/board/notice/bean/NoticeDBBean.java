package board.notice.bean;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.*;

public class NoticeDBBean {
	private static NoticeDBBean instance = new NoticeDBBean();

	public static NoticeDBBean getInstance() {
		return instance;
	}

	private NoticeDBBean() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
		return ds.getConnection();
	}

	public void insertArticle(NoticeDataBean article) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = article.getNum();
		String sql = "";

		try {
			conn = getConnection();

			sql = "insert into board(num,subject,content,reg_date,file_content,readcount)";
			sql += "values(board_seq.NEXTVAL,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getSubject());
			pstmt.setString(2, article.getContent());
			pstmt.setTimestamp(3, article.getReg_date());
			pstmt.setString(4, article.getFile_content());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}
}