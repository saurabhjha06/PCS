<%@page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html><head></head>

<body>

<%
         Connection con=null;

         Statement st=null;
         ResultSet rs=null;
         PreparedStatement pst=null;


          try {
                 
                 
                Class.forName("com.mysql.jdbc.Driver");
                con= DriverManager.getConnection("jdbc:mysql://localhost/SAURABH","root","lenovo");
               
                st=con.createStatement();
                
                
              }
              
              catch(Exception x){out.println("Error registering JDBC"+x.getMessage());}   
             
              
 %>
</body></html>
