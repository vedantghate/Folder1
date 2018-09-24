<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Oder Status</title>
</head>
<body>
        <form method="post" action="changestatus.jsp">
            <center>
            <table border="1" width="60%" cellpadding="5" bgcolor="lightblue">
                <thead>
                    <tr>
                        <th colspan="2">Change Order Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Order Id*</td>
                        <td><input size="40" type="text" name="id" required input value="" /></td>
                    </tr>
                   
                    <tr>
                        <td>Status*</td>
                        <td>
                        <select name="status" id= "mylist3" style="width: 260px;"> 
                        <option value="blank">Select</option>                        
                        <option value="In Process">In Process</option>
                        <option value="Shipped">Shipped</option>
                        <option value="Delivered">Delivered</option> 
                        </select></td>
                    </tr>                    
                  
                     <tr>
                        <td><input type="submit" value="Submit" /></a>
                        <input type="reset" value="Reset" /></td>
                    </tr>                            
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>