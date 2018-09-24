<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
        <form method="post" action="adminregistration.jsp">
            <center>
            <table border="1" width="60%" cellpadding="5" bgcolor="lightblue">
                <thead>
                    <tr>
                        <th colspan="2">Registration Page</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name*</td>
                        <td><input size="40" type="text" name="firstname" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name*</td>
                        <td><input size="40" type="text" name="lastname" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Date of Birth*</td>
                        <td><input size="40" type="month" name="dob" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Gender*</td>
                        <td>
                         <p><input TYPE=radio name=gender required input VALUE=Female> Female 
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                           <input TYPE=radio name=gender VALUE=Male> Male </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Address*</td>
                        <td> <input size="40" type="text" required input name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>City*</td>
                        <td>
                        <select name="city" id= "myList" style="width: 260px;"> 
                        <option value="blank">Select</option>                        
                        <option value="Akola">Akola</option>
                        <option value="Amravati">Amravati</option>
                        <option value="Aurangabad">Aurangabad</option>
                        <option value="Dhule">Dhule</option>
                        <option value="Jalgaon">Jalgaon</option>
                        <option value="Latur">Latur</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Nagpur">Nagpur</option>
                        <option value="Nashik">Nashik</option>
                        <option value="Pune">Pune</option>                                              
                        <option value="Satara">Satara</option>
                        <option value="Solapur">Solapur</option>     
                        </select></td>
                    </tr>                    
                   <tr>
                        <td>Phone No.*</td>
                        <td><input size="40" type="text" name="phone" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Email*</td>
                        <td><input size="40" type="email" name="email" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name*</td>
                        <td><input size="40" type="text" name="username" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Password*</td>
                        <td><input size="40" type="password" name="password" required input value="" /></td>
                    </tr>
                    <tr>
                        <td>Type*</td>
                        <td>
                        <select name="type" id= "myList2" style="width: 260px;"> 
                        <option value="blank">Select</option>                        
                        <option value="Admin">Admin</option>
                        <option value="Salesperson">Salesperson</option>    
                        </select></td>
                    </tr> 
                                        
                     <tr>
                        <td><input type="submit" value="Submit" /></a>
                        <input type="reset" value="Reset" /></td>
                    </tr>                           
                    <tr>
                        <td colspan="2">Already registered?<a href="adminLogin.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>