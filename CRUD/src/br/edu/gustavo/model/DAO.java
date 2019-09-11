package br.edu.gustavo.model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;

public class DAO {
	
	private Connection connection = null;
	
	public DAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost/CRUD", "gubebra", "abcd");
	}
	
	public USERS getPassword(String name) throws SQLException
	{
		USERS user  = new USERS();
		
		PreparedStatement stmt = connection.prepareStatement("SELECT password FROM USERS WHERE name='" + name + "'");
		
		ResultSet rs = stmt.executeQuery();
		
		user.setName(name);
		
		while (rs.next()) {	user.setPassword(rs.getString("password")); }

		rs.close();
		stmt.close();
		
		return user;
	}
	
	public void createUser(String user, String password) throws SQLException
	{
		PreparedStatement stmt = connection.prepareStatement("INSERT INTO USERS (name, password) VALUES ('" + user + "', '" + password + "')");
		stmt.execute();
		stmt.close();
		PreparedStatement stmt2 = connection.prepareStatement("INSERT INTO WORKOUTS (user, monday, tuesday, wednesday, thursday, friday, saturday, sunday)"
				+ " VALUES ('" + user + "', '', '', '', '', '', '', '');");
		stmt2.execute();
		stmt2.close();
	}
	
	public void updateColumn(String update, String user, String column) throws SQLException
	{
		PreparedStatement stmt = connection.prepareStatement("UPDATE WORKOUTS SET " + column + "='" + update + "' WHERE user='" + user + "';");
		stmt.execute();
		stmt.close();
	}
	
	public int getMaxUsers() throws SQLException
	{
		int max = 0;
		PreparedStatement stmt = connection.prepareStatement("SELECT MAX(id) FROM WORKOUTS;");

		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) { max = rs.getInt("MAX(id)"); }
		stmt.execute();
		stmt.close();
		
		return max;
	}
	
	public WORKOUTS getTasks(String user) throws SQLException 
	{
		
		PreparedStatement stmt = connection.prepareStatement("SELECT * FROM WORKOUTS WHERE user='" + user + "'");
		WORKOUTS task = new WORKOUTS();

		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) 
		{			
			task.setId(rs.getInt("id"));
			task.setName(rs.getString("user"));
			task.setMonday(rs.getString("monday"));
			task.setTuesday(rs.getString("tuesday"));
			task.setWednesday(rs.getString("wednesday"));
			task.setThursday(rs.getString("thursday"));
			task.setFriday(rs.getString("friday"));
			task.setSaturday(rs.getString("saturday"));
			task.setSunday(rs.getString("sunday"));
		}
		
		rs.close();
		stmt.close();
		
		return task;
	}

	
}
