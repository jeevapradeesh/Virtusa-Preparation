package xadmin.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import xadmin.login.bean.LoginBean;

public class LoginDao {

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
	
	
        public boolean validate(LoginBean loginBean) {
        	loadDriver(dbDriver);
        	Connection con = getConnection();
        	boolean status = false;
        	String sql = "select * from details where email = ? and password = ?";
        	
        	PreparedStatement ps;
    		try {
    		ps = con.prepareStatement(sql);
    		ps.setString(1, loginBean.getEmail());
    		ps.setString(2, loginBean.getPassword());
    	ResultSet rs = ps.executeQuery();
    	status = rs.next();
    	
    		} catch (SQLException e) {
    			//1000 Auto-generated catch block
    			e.printStackTrace();
    		}
    		
    		return status;
		
	    }

	
	
}

