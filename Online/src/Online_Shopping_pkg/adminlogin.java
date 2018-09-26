package Online_Shopping_pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminlogin
 */
@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 res.setContentType("text/html");
		  PrintWriter out = res.getWriter();
		 
		  String user_name = req.getParameter("username");
		  String password = req.getParameter("password");
		 
		  try {
		  // Load the database driver
	      Class.forName("org.postgresql.Driver");
	      Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
		  
	      Statement smt =con.createStatement();
	      String sql = "select * from admin where user_name='"+user_name+"' and password='"+password+"'";
	      		
		
		
	      ResultSet  r=smt.executeQuery(sql);
	      		if(r.next())
	      		{
	      			HttpSession session=req.getSession();  
			        session.setAttribute("name",user_name);  
			        res.sendRedirect("http://localhost:8080/Online_Shopping/adminhome.jsp"); 
	      		}
	      		else
	      		{
	      			alert("Login Error");
	      			res.sendRedirect("adminlogin.jsp"); 
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

	private void alert(String string) {
		// TODO Auto-generated method stub
		
	}
	}

