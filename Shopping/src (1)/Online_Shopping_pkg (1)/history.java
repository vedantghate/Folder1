package Online_Shopping_pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class history
 */
@WebServlet("/history")
public class history extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public history() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 PrintWriter out=response.getWriter();    
		 
		 HttpSession session=request.getSession(false);  
	        if(session!=null)
	        {  
	        String name=(String)session.getAttribute("name");  
	        try {
	        Class.forName("org.postgresql.Driver");
	        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
	        PreparedStatement smt = con.prepareStatement("select * from orders where user_name='"+name+"'");
	        ResultSet rs = smt.executeQuery();
	        while(rs.next())
	        {
			
			  String item_name = rs.getString("item_name");
			  String uname = rs.getString("user_name");
			  int quantity = rs.getInt("quantity");
				
		      out.print(item_name+ "::");
		      out.println(uname+ "::");
		      out.println(quantity+ "::");
		       
	        }
	        }catch(SQLException e)
	        {
	        	
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	        }
	        }

}
