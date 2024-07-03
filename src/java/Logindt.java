/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vivek Singh
 */
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.lang.String;
import java.security.NoSuchAlgorithmException;


public class Logindt {

    public static Object PasswordUtil;
	
	//validate if the entered login information are valid
	public static boolean Validate(String name, String Password) {
		
		boolean status=false;  
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException e) {
		    e.printStackTrace();
		}

		try {
                    String password;
		    String dbURL = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb";
		    String username = "kashwath";
		    String password1 = "tigerlion";
		    Connection connection = DriverManager.getConnection(
		        dbURL, username, password1);
		    PreparedStatement ps=connection.prepareStatement(  
		    		"select HashedAndSaltedPassword from userLogin where emailAdddress=?");  
		    		ps.setString(1,name);  
		   		      
		    		ResultSet rs=ps.executeQuery();  
		    		while(rs.next()) {
		    			String HashedAndSaltedPassword=rs.getString(1);
			    		//compare hashed password in DB with hashed password entered by user
                                        String comparePassword;
                                        
                        comparePassword = PasswordUtil.hashAndSaltPassword(password);
                                        
			    		
			    		//if they match, then it is the right password
			    		if(HashedAndSaltedPassword.equals(comparePassword)) {
			    		status=rs.next(); 
			    		connection.close();
			    		return true;
			    	}

		    		} 	
		    	

		}

		    			
		    	

		
		
		catch(SQLException e) {
		    for (Throwable t : e)
		        t.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	
	//add user data; used during signup
	public static boolean add(String name, String hashedPassword, String salt, String HashedAndSaltedPassword ) {
		
		boolean status=false; 
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException e) {
		    e.printStackTrace();
		}

		try {
		    String dbURL = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb";
		    String username = "kashwath";
		    String password1 = "tigerlion";
		    Connection connection = DriverManager.getConnection(
		        dbURL, username, password1);
		    PreparedStatement ps=connection.prepareStatement(  
		    		"INSERT INTO userLogin " 
		    		+ "(emailAdddress, hashedPassword, salt, HashedAndSaltedPassword) "
		    		+ "VALUES "
		    		+ "(?, ?, ?, ?) "
		    );  
		    		ps.setString(1,name);  
		    		ps.setString(2,hashedPassword);  
		    		ps.setString(3,salt);  
		    		ps.setString(4,HashedAndSaltedPassword);  		    		
		    		ps.executeUpdate();

		    		connection.close();
		    		return true;

		} catch(SQLException e) {
		    
		        e.printStackTrace();
		}


		return status;
	}

	//check if the entered login information is of an admin
	public static boolean Admin(String name, String password) {
		boolean status=false;  
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException e) {
		    e.printStackTrace();
		}

		try {
		    String dbURL = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb";
		    String username = "kashwath";
		    String password1 = "tigerlion";
		    Connection connection = DriverManager.getConnection(
		        dbURL, username, password1);
		    PreparedStatement ps=connection.prepareStatement(  
		    		"select * from admin where username=? and password=?");  
		    		ps.setString(1,name);  
		    		ps.setString(2,password);  
		    		      
		    		ResultSet rs=ps.executeQuery();  
		    		status=rs.next(); 
		    		connection.close();

		} catch(SQLException e) {
		    for (Throwable t : e)
		        t.printStackTrace();
		}

		return status;
	}
	
	
//adding address details to DB
public static boolean addAddress(String name,  String city, String locality, String country, String noofpeople, String dateinformation) {
		
	boolean status=false; 
	try {
	    Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException e) {
	    e.printStackTrace();
	}

	try {
	    String dbURL = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb";
	    String username = "kashwath";
	    String password1 = "tigerlion";
	    Connection connection = DriverManager.getConnection(
	        dbURL, username, password1);
	    PreparedStatement ps=connection.prepareStatement(  
	    		"INSERT INTO address " 
	    		+ "( name, city, locality, country, noofpeople, dateinformation) "
	    		+ "VALUES "
	    		+ "(?, ?, ?, ?, ?, ?, ?, ?, ?) "
	    );  
	    		ps.setString(1,name);
	    		ps.setString(2,city); 
	    		ps.setString(3,locality);  
	    		ps.setString(4,country); 
	    		ps.setString(5,noofpeople);
	    		ps.setString(6,dateinformation);
	    		
	    		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	    		LocalDate localDate = LocalDate.now();
	    		System.out.println(dtf.format(localDate));
	    		
	    		ps.setString(9,dtf.format(localDate));  
	    		ps.executeUpdate();
	    		connection.close();	
	    		

	} catch(SQLException e) {
	    for (Throwable t : e)
	        t.printStackTrace();
	}


	return status;
}

//add donated money information
public static boolean addMoney(String name, String amount) {
	
	boolean status=false; 
	try {
	    Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException e) {
	    e.printStackTrace();
	}

	try {
	    String dbURL = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb";
	    String username = "kashwath";
	    String password1 = "tigerlion";
	    Connection connection = DriverManager.getConnection(
	        dbURL, username, password1);
	    PreparedStatement ps=connection.prepareStatement(  
	    		"INSERT INTO money " 
	    		+ "( name, amount, dateinformation) "
	    		+ "VALUES "
	    		+ "(?, ?, ?) "
	    );  
	    		ps.setString(1,name);
	    		ps.setString(2,amount);
	    		
	    		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	    		LocalDate localDate = LocalDate.now();
	    		
	    		ps.setString(3,dtf.format(localDate)); 
	    		ps.executeUpdate();
	    		connection.close();	

	} catch(SQLException e) {
	    for (Throwable t : e)
	        t.printStackTrace();
	}


	return status;
}

    private static class HashedAndSaltedPassword {

        public HashedAndSaltedPassword() {
        }
    }
}