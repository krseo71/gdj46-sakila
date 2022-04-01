package dao;

import java.sql.*;
import java.util.*;

public class StaffDao {
	public List<Map<String, Object>> selectStaffList() {
		List<Map<String, Object>> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sakila","root","java1234");
			
			String sql = "SELECT"
					+ "	s1.staff_id staffId,"
					+ "	s1.store_id storeId,"
					+ "	CONCAT(s1.first_name,' ',s1.last_name) staffName,"
					+ "	s1.address_id addressId,"
					+ "	CONCAT(a.address, IFNULL(a.address2, ''), district) staffAddress,"
					+ "	s1.email email,"
					+ "	s1.username username,"
					+ "	s1.last_update lastUpdate"
					+ " FROM staff s1"
					+ " INNER JOIN store s2"
					+ " INNER JOIN address a"
					+ " ON s1.staff_id = s2.manager_staff_id"
					+ " AND s1.address_id = a.address_id;";
			
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Map<String, Object> map = new HashMap<>();
				map.put("staffId", rs.getInt("staffId"));
				map.put("storeId", rs.getInt("storeId"));
				map.put("staffName", rs.getString("staffName"));
				map.put("addressId", rs.getInt("addressId"));
				map.put("staffAddress", rs.getString("staffAddress"));
				map.put("email", rs.getString("email"));
				map.put("username", rs.getString("username"));
				map.put("lastUpdate", rs.getString("lastUpdate"));
				list.add(map);
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("예외발생");
		}finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public static void main(String[] args) {
		StaffDao dao = new StaffDao();
		List<Map<String, Object>> list = dao.selectStaffList();
		for(Map m : list) {
			System.out.print(m.get("staffId") + ", ");
			System.out.print(m.get("storeId") + ", ");
			System.out.print(m.get("staffName") + ", ");
			System.out.print(m.get("addressId") + ", ");
			System.out.print(m.get("staffAddress") + ", ");
			System.out.print(m.get("email") + ", ");
			System.out.print(m.get("username") + ", ");
			System.out.print(m.get("lastUpdate"));
			System.out.println("");
		}
	}
}
	
