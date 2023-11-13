<%-- 
    Document   : newjsp1
    Created on : Oct 24, 2023, 10:37:18 AM
    Author     : chwaq
--%>
<%-- 
    Document   : validate
    Created on : 28 Feb, 2015, 8:50:26 AM
    Author     : Lahaul Seth
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        String name = request.getParameter("name");
            String email = request.getParameter("email");
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lostandfound?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select Name,Email,Password from login where Name=? And Email=? And Password=? ");
        pst.setString(1, name);
          pst.setString(2, email);
        pst.setString(3, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>