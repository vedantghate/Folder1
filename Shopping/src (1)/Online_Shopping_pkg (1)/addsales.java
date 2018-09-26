package Online_Shopping_pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addsales
 */
@WebServlet("/addsales")
public class addsales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addsales() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 
		 
		  }
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 res.setContentType("text/html");
		  PrintWriter out = res.getWriter();
		  //get the variables entered in the form
		 

		  
		  String pname= req.getParameter("pname");
		  String area = req.getParameter("area");
		 
		 
		  try {
		  // Load the database driver
	      Class.forName("org.postgresql.Driver");
	      Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
		  
		  String sql = "insert into salesperson values (?,?)";
		  PreparedStatement pst=con.prepareStatement(sql);
		  pst.setString(1, pname);
		  pst.setString(2, area);
		 
		
		  int numRowsChanged = pst.executeUpdate();
		  // show that the new account has been created
		  res.sendRedirect("http://localhost:8080/Online_Shopping/adminhome.jsp");  
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


