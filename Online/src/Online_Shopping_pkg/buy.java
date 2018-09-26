package Online_Shopping_pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/buy")
public class buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buy() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{
			 response.setContentType("text/html");
			  PrintWriter out = response.getWriter();
			
			String name= request.getParameter("itemname");
			String quant[] = request.getParameterValues("quantity");
			//int id = request.getParameter("");
		
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
			//PreparedStatement smt = con.prepareStatement("select quantity from inventory where item_name="+name);
		PreparedStatement smt=null;
			for(int i=0; i<quant.length; i++)
			{
				for(int j=0; i<quant.length; i++)
				{
					smt = con.prepareStatement("update inventory set quantity=quantity-1 where quantity="+quant[i]+" and quantity>0");
					int numRowsChanged = smt.executeUpdate();
				}
			}
			
			
			/*String str = r.getString("quantity");
			int quant = Integer.parseInt(str);
			quant = quant-1;
			String query = "update inventory set quantity = "+quant+" where quantity>0";
			PreparedStatement smt1 = con.prepareStatement(query);
			smt1.executeUpdate();*/
			
			
			 
			 
			  out.println("Item Bought");
			  out.println("<br><a href="+"http://localhost:8080/Online_Shopping/home.jsp"+">Click here</a> to visit shopping portal");
			  
			  smt.close();
		
		
		
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}

}
