package Online_Shopping_pkg;

import java.io.IOException; 
import java.io.PrintWriter;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;


@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();    
	          
	        HttpSession session=request.getSession(false);  
	        if(session!=null){  
	        String name=(String)session.getAttribute("name");  
	          
	        out.print("Hello, "+name+" Welcome to Profile"); 
	        out.print("<html><body>");
	        out.println("<br><a href="+"http://localhost:8080/Online_Shopping/home.jsp"+">Click here</a> to visit shopping portal");
	        out.println("</html> "); 
	        }  
	        else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("login.jsp").include(request, response);  
	        }  
	        out.close();  
	}

}
