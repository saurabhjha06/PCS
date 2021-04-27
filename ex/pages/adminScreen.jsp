<%@ include file="../pages/includes/heading.jsp"%><%@ include file="../JSP/DbConnect.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>





<style> /* The side navigation menu */

.sidebar {
  margin: 0;
  padding: 2px;
  width: 200px;
  background-color: #f1f1f1;
  position: absolute;
  height: 100%;
  overflow: auto;
}

/* Sidebar links */
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}

/* Active/current link */
.sidebar a.active {
  background-color:  #4ca6af;
  color: white;
}

/* Links on mouse-over */
.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

/* On screens that are less than 700px wide, make the sidebar into a topbar */
@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

/* On screens that are less than 400px, display the bar vertically, instead of horizontally */
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }

}
body{
  background-image: url('../resources/images/dashboardcover.jpg');
  background-repeat: no-repeat;
  background-size:auto;
}
/*.form-control{
  width: 40%;
}*/
.dataInput{
  width: 50%;
}
</style>
<!-- The sidebar -->
<div class="sidebar">
<a class="active" id="admn" onclick="display_content('dashboard',this)">Dashboard</a>
<a onclick="display_content('Report',this)">Report</a>
<a onclick="display_content('addDoctor',this)">Add Doctor</a>
<a onclick="display_content('updateMaster',this)">Update Master</a>
</div>
<!-- Page content -->
<div class="container"style="margin-left:188px">
<div id="dashboard"class="menu-Item">
<div class="card bg-warning"style="width:auto">
<div class="card-body text-center">
<p class="card-text"></p>
<%{


                String query="select* from user_info";
                  rs=st.executeQuery(query);

                 
}%>

<table border=1 align=center style="text-align:center;">
<tr>
<td>Name</td>
<td>contact</td>
<td>address</td>
<td>city</td>
<td>pincode</td>
<td>state</td>
<td>doctor</td>
<td>registration no</td>
<td>date</td>
</tr>

<% while(rs.next()){ %>
<tr>
<td><%=rs.getString("name") %>
</td>
<td><%=rs.getString("contact") %>
</td>
<td><%=rs.getString("address1") %>
</td>
<td><%=rs.getString("city") %>
</td>
<td><%=rs.getString("pincode") %>
</td>
<td><%=rs.getString("state") %>
</td>
<td><%=rs.getString("doctor") %>
</td>
<td><%=rs.getString("registration_no") %>
</td>
<td><%=rs.getString("dt_reg") %>
</td>
</tr><%
//con.close();

}%>
</table>
</div>
</div>
</div> <!-- dashboard -->
<div id="Report" class="menu-Item"style="display:none">
<h5> This is report</h5>
</div> <!-- Report -->
<div id="addDoctor"class="menu-Item"style="display:none">

<div class="dataInput" >
<h5></h5>
  <form method="POST"  id="Insert-Info"action="adminScreen.jsp">
  <input type="text" class="form-control" name="firstname" placeholder="First Name">
  <input type="text" class="form-control" name="lastname" placeholder="last name">
  <input type="text" class="form-control" name="specl" placeholder="Specialization">  
  <input type="text" class="form-control" name="expr" placeholder="Experience">
  <input type="text" class="form-control" name="addr" placeholder="Address">
  <input type="text" class="form-control" name="mobile" placeholder="Contact">  
  <input type="text" class="form-control" name="fee" placeholder="Charges/fee">
 
  <button type="submit"  class="btn button">Insert Data </button>
</form>
</div>
<% 
if ("POST".equals(request.getMethod())) {
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
}
%> 

   


</div> <!-- addDoc -->
<div id="updateMaster"class="menu-Item"style="display:none">
<h5> this is update master</h5>
</div> <!-- updateMaster -->
</div>
<script>
    <%if((String)session.getAttribute("admin")!=null){%>
      document.getElementById("loginCh").style.visibility = "hidden";
    <%}
    else{%>
     document.getElementById("loginCh").style.visibility = "visible";
<%}%>
 
function display_content(id,elem){
   $("a").removeClass("active");
   $(elem).addClass("active");
   $(".menu-Item").hide();
   $("#"+id).show();
  }


$(document).ready(function(){
$('#Insert-Info').on('submit', function(e){
    // validation code here
   // if(!valid) {
      e.preventDefault();
   // }

$.ajax({
  method:"POST",
  url: "addDoctor.jsp", 
  dataType:"text",
  data: {"firstname" : $("#Insert-Info input[name=firstname]").val(),
  "lastname" : $("#Insert-Info input[name=lastname]").val(),
  "specl" : $("#Insert-Info input[name=specl]").val(),
  "expr" : $("#Insert-Info input[name=expr]").val(),
  "addr" : $("#Insert-Info input[name=addr]").val(),
  "mobile" : $("#Insert-Info input[name=mobile]").val(),
  "fee" : $("#Insert-Info input[name=fee]").val()
  
 

  },
   success: function(result){

   //alert("Data sent successfully"); 
   swal("Good job!", "Data Inserted successfully!", "success");

  },
 error: function(result){

   console.log(result); 

  }

  });
});

});
</script>
