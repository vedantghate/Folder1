package Online_Shopping_pkg;

import java.lang.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/user_register")
public class user_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	
	
    public user_register() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost(req, res);
		 
		  res.setContentType("text/html");
		  PrintWriter out = res.getWriter();
		  //get the variables entered in the form
		 

		  
		  String first_name = req.getParameter("first_name");
		  String last_name = req.getParameter("last_name");
		  String email = req.getParameter("email");
		  String user_name = req.getParameter("username");
		  String password = req.getParameter("password");
		 
		  try {
		  // Load the database driver
	      Class.forName("org.postgresql.Driver");
	      Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
		  
		  String sql = "insert into registration values (?,?,?,?,?)";
		  PreparedStatement pst=con.prepareStatement(sql);
		  pst.setString(1, first_name);
		  pst.setString(2, last_name);
		  pst.setString(3, email);
		  pst.setString(4, user_name);
		  pst.setString(5, password);
		
		  int numRowsChanged = pst.executeUpdate();
		  // show that the new account has been created
		  res.sendRedirect("Login.jsp");  
		  pst.close();
		  }
		  catch(ClassNotFoundException e){
		  out.println("Couldn't load database driver: " 
		  + e.getMessage());
		  }
		  catch(SQLException e){
		  out.println("SQLException caught: " 
		  + e.getMessage());
		  }
		  catch (Exception e){
		  out.println(e);
		  }
		 
		 
		  }
}
		
		

