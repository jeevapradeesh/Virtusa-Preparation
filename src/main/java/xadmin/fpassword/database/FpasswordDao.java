package xadmin.fpassword.database;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import xadmin.fpassword.bean.FpasswordBean;

public class FpasswordDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/signup";
	private String dbUname = "root";
	private String dbPassword = "wpttmjajta23";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// 1000 Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			//1000 Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean changepass(FpasswordBean fpasswordBean)
	{
		
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		String sql = "select * from signup.details where email = ?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, fpasswordBean.getEmail());
		
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		} catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public String insert(FpasswordBean fpasswordBean)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Password changed";
		String sql = "update signup.details set password=? where email=?";
		
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, fpasswordBean.getPassword());
		ps.setString(2, fpasswordBean.getEmail());
		   
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Password not changed";
		}
		System.out.println(result);
		return result;
	}

}

