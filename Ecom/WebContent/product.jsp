<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
</head>
<body>
        <form method="post" action="cart.jsp">
            <center>
            <table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
                <thead>
                    <tr>
                        <th colspan="4">Product Page <br>
                        (Only Apple Products)</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Product Name</td>
                        <td>Product Rate</td>
                        <td>Quantity</td>
                    </tr>
                    
                    <tr>
                        <td>
                           Mobile
                          </td>
                      <td> 
                      Mobile : Rs. 80000/- 
                      </td>
                     <td><select name="quantity1" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                                                             
                     </tr>
                     
                      <tr>
                        <td>                                          
                        Charger <br>                                             
                        </td>
                        
                      <td> 
                      Charger : Rs. 600/-
                      </td>
                     <td>
                     
                     <select name="quantity2" id= "myList2" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        
                        </td>                     
						
                     </tr>
                     
                     
                     <tr>
                        <td>
                          Earphone <br>
                          </td>
                      <td> 
                      Earphone : Rs. 750/-
                      </td>
                     <td><select name="quantity3" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
                     
						</tr>
                     
                     <tr>
                        <td>
                          Headphone <br>                        
                          </td>
                      <td> 
                      Headphone : Rs. 950/-
                      </td>
                     <td><select name="quantity4" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
                     
						</tr>
                     
                     
                     <tr>
                        <td>
                         Speaker <br>
                          </td>
                      <td> 
                      Speaker : Rs. 9050/-
                      </td>
                     <td><select name="quantity5" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
                     
						</tr>
                     
                     
                     <tr>
                        <td>
                         Camera <br>
     </td>
                      <td> 
                      Camera : Rs. 8000/-
                      </td>
                     <td><select name="quantity6" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
                     
						</tr>
                     
                     
                     <tr>
                        <td>
                         Cover case <br>
                          </td>
                      <td> 
                      Cover case : Rs. 300/-
                      </td>
                     <td><select name="quantity7" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
                     
						</tr>
                     
                     <tr>
                        <td>
          				 Powerbank 
                          </td>
                      <td> 
                      Powerbank : Rs. 3000/-
                      </td>
                     <td><select name="quantity8" id= "myList" style="width: 100px;"> 
                        <option value="0">0</option>
                        <option value="1">1</option>                        
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </td>                     
            
						</tr>
                     
                    <tr>
                    <td colspan="4">
                    
                    <input type="reset" value="Reset" /></td>                        
                    </tr>
                    <tr>
                    <td>						
						<INPUT TYPE=submit name="submit" value="Proceed to Cart">						
					</td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>

        <a href="success.jsp">Cancel and logout</a>
    </body>
</html>