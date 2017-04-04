package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class StoreDAO {
	private static StoreDAO storeDAO = new StoreDAO();
	private DataSource dataSource;

	private StoreDAO() {
		dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static StoreDAO getInstance() {
		return storeDAO;
	}

	public Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	public ArrayList<StoreVO> getStoreShowList() throws SQLException {
		ArrayList<StoreVO> storeList = new ArrayList<StoreVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			// select * from store;
			String sql = "select storeName, storePic from store";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				storeList.add(new StoreVO(rs.getString(1),rs.getString(2)));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return storeList;
	}

	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}
}
