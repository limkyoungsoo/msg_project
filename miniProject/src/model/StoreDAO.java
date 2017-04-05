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
	// 강정호 제작
	public StoreVO getStoreMenuList(String storeName) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		StoreVO storeVO=new StoreVO();
		MenuVO menuVO=new MenuVO();
		try{
			con=getConnection();
			String sql="select s.storeName, s.storeLoc, s.storeTel, s.storePic, s.openHour, "
					+ "m.menuNo, m.menuName, m.menuPrice, m.menuPic  "
					+ "from store s, menu m "
					+ "where s.storeName=m.storeName and m.storeName=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, storeName);
			rs=pstmt.executeQuery();
			if(rs.next()){
				storeVO.setStoreName(rs.getString(1));
				storeVO.setStoreLoc(rs.getString(2));
				storeVO.setStoreTel(rs.getInt(3));
				storeVO.setStorePic(rs.getString(4));
				storeVO.setOpenHour(rs.getString(5));
				//menuVO에 메뉴번호, 메뉴이름, 메뉴가격, 메뉴사진 저장 -강정호-
				menuVO.setMenuNo(rs.getInt(6));
				menuVO.setMenuName(rs.getString(7));
				menuVO.setMenuPrice(rs.getInt(8));
				menuVO.setMenuPic(rs.getString(9));
				// menuVO를 다시 storeVO에 저장한다. -강정호-
				storeVO.setMenuVO(menuVO);
			}
		}finally{
			closeAll(rs,pstmt,con);
		}
		return storeVO;
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
