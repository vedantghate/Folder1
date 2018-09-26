package Online_Shopping_pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/profile")
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 PrintWriter out=response.getWriter();    
		 
		 HttpSession session=request.getSession(false);  
	        if(session!=null)
	        {  
	        String name=(String)session.getAttribute("name");  
	        try {
	        Class.forName("org.postgresql.Driver");
	        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
	        PreparedStatement smt = con.prepareStatement("select * from registration where user_name='"+name+"'");
	        ResultSet rs = smt.executeQuery();
	        while(rs.next())
	        {
			
			  String fname = rs.getString("first_name");
			  String lname = rs.getString("last_name");
			  String email = rs.getString("email");
			  String uname = rs.getString("user_name");
				
		      out.print(fname+ "::");
		      out.println(lname + "::");
		      out.println(email + "::");
		      out.println(uname+ "::");
		       
	        }
	        }catch(SQLException e)
	        {
	        	
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
