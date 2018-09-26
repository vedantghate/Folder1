package Online_Shopping_pkg;

import java.lang.*;
import javax.servlet.http.HttpSession; 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	
	
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost(req, res);
		 
		  res.setContentType("text/html");
		  PrintWriter out = res.getWriter();
		 
		  String user_name = req.getParameter("username");
		  String password = req.getParameter("password");
		 
		  try {
		  // Load the database driver
	      Class.forName("org.postgresql.Driver");
	      Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
		  
	      Statement smt =con.createStatement();
	      String sql = "select * from registration where user_name='"+user_name+"' and password='"+password+"'";
	      		
		
		
	      ResultSet  r=smt.executeQuery(sql);
	      		if(r.next())
	      		{
	      			HttpSession session=req.getSession();  
			        session.setAttribute("name",user_name);  
			        res.sendRedirect("http://localhost:8080/Online_Shopping/home"); 
	      		}
	      		else
	      		{
	      			out.println("Login Error");
	      			res.sendRedirect("Login.jsp"); 
	      			smt.close();
	      		}
	      		
		  
		 
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
		
		

