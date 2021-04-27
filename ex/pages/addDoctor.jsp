<%@ include file="../JSP/DbConnect.jsp"%>
<% 
//if ("POST".equals(request.getMethod())) {
   out.println(request.getMethod());
    String fname=request.getParameter("firstname");
    String lname=request.getParameter("lastname");
    String specl=request.getParameter("specl");
    String expr=request.getParameter("expr");
    String addr=request.getParameter("addr");
    String mobile=request.getParameter("mobile");
    String fee=request.getParameter("fee");  

   try{ 
    if (con!=null){
    
    
     String qry="INSERT INTO doctor_info" +
            "  ( fname, lname, specl, expr, addr, mobile,fee) VALUES " +
            " ( ?, ?, ?, ?,?,?,?)";
     pst=con.prepareStatement(qry);

     
      pst.setString(1,fname);
      pst.setString(2,lname);
      pst.setString(3,specl);
      pst.setString(4,expr);
      pst.setString(5,addr);
      pst.setString(6,mobile);
      pst.setString(7,fee);
      
      rs=pst.executeQuery();
  }
  else
   out.println("Not successful");

/*
     */



}

 

 

catch (Exception ex){
out.println(ex);
}

%> 
