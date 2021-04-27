
<%@include file="pages/includes/heading.jsp" %>
<%@include file="JSP/DbConnect.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<%   
   // check for already created session before login
 if((String)session.getAttribute("admin") != null )
   
   {
    out.print(session.getAttribute("admin"));
    response.sendRedirect("pages/adminScreen.jsp");  
   }

%>

<meta name="viewport" content="width=device-width, initial-scale=1"> 

<link rel="stylesheet" type="text/css" href='<%=getServletContext().getInitParameter("base_url")%>/resources/css/modal.css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>




 <!-- 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
-->

<!--Getting input parameter for query-->
<% 

try{
         if ("POST".equals(request.getMethod())) {
            String a = request.getParameter("user");
            String b = request.getParameter("pass");
           
           String query = "Select* from login where user_id='" + a +  "' and pswd= '"  + b+"'";
            rs = st.executeQuery(query);

            if(rs.next()) {

            // after login successfull
          
           

             session.setAttribute("admin",rs.getString("user_id"));
             response.sendRedirect("pages/adminScreen.jsp");

          }

            else{

                        
                %>
                <script language="JavaScript">
                   swal("Warning!", "Please check your credentials!", "error");
                 //   alert("Incorrect Login Details");
                </script>
                <%
                }
  
  }
}
 
 catch (Exception x) { out.println("Caught an error"+x);  }
                      
%>



<style>  



</style>

            <div class="row">
                  <div class="col1" >
                 <div class="card" style="width:20rem;margin-left:15px;margin-top: 10px">
                  <h5 class="card title"> Want to consult to the doctor </h5>
                  <div class="card-body">
                                      <img class="card-img-top" src="resources/images/coverpic.jpg">

                     <p class="card-text">No need for waiting for long hours,get your registration done in minutes </p>
                      <button type="button" id="book" class="btn button" data-toggle="modal" data-target="#mymodel"><i class="fa fa-redo"></i>Book Appointment
                      </button>


  

                    </div> </div>

                    
                    <div class="card2" style="margin-top: 15px;margin-left:15px;width: 20rem">
                     <img class="card-img-top" src="resources/images/cover1.jpg">
                      <div class="card-body">
                      <h5 class="card title">Don't worry !! </h5>
                      <p class="card-text">Choose your desired doctor or check profile </p>
                      <button type="button"class="btn button"data-toggle="modal" data-target="#doc-list">Doctors Available</button>
                      <button type="button" id="book"  class="btn button">Check Status</button>
                     </div>
                   </div> 
                
                  </div>

                
                  <div class="container">
                 <div id="myCarousel" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="resources/images/home.jpg" alt="Image1" style="width: 100%;"
                      class="img-responsive ">
                  </div>

                  <div class="item">
                    <img src="resources/images/coverside.jpg" alt="Image2"
                      style="width: 100% !important;">
                  </div>

                  <div class="item">
                    <img src="resources/images/back.jpg" alt="Image3"
                      style="width: 100% !important;">
                  </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span> <span
                  class="sr-only">Previous</span>
                </a> <a class="right carousel-control" href="#myCarousel"
                  data-slide="next"> <span
                  class="glyphicon glyphicon-chevron-right"></span> <span
                  class="sr-only">Next</span>
                </a>
    </div>
  
</div> </div>

  <!-- The Modal  for book appointment button-->
  <div class="modal fade" id="mymodel">
    <div class="modal-dialog modal-dialog-centered" >
      <div class="modal-content" style="width:auto">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"style="font-family:Lucida Console"><img src="resources/images/icon.png" style="height:75px;"> Authentication</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="margin:35px;">
          
             <div class="first row" >
               <input type="text"  id="mobile-no"class="model_Input"placeholder="Enter mobile no" name="mobile" required>
              
                <button class="btn button" id="getotp" ><i class="fa fa-2x fa-check-circle"></i>Get OTP</button>
          
        </div>

         <div class="second row">
                   
          <input type="password" id="getOTP"class="model_Input"placeholder="Enter OTP received" name="otp" required> 
          
         </div>
      
        
        <!-- Modal footer -->
        <div class="modal-footer" style="margin-top: 30px">
          
          <button class="btn button" type="submit" id="cont" >Continue <i class="fa fa-3x fa-angle-right"></i></button>
          <input type="hidden" id="otp">
         
        </div>
        
       
      </div>
    </div>
  </div>

  </div>

<!--Modal starts for doctor available button-->
<div class="modal fade" id="doc-list">
    <div class="modal-dialog modal-dialog-centered" >
      <div class="modal-content" style="width:auto">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"style="font-family:Lucida Console"><img src="resources/images/search.png" style="height:75px;">Search Doctors</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="margin:35px;">
       
             <div class="first row" >
               <div class="searchbox">
                <input type= "text" id="doc"class="modal_Input" placeholder="Search Doctors" >
                <div class="showList">
                 <ul class="list-group" >
                </div>
              
              </div>
		</div>

         <div class="second row">
                   
           
             
         </div>
      
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button class="btn button" id="reset" > Reset<i class="fa  fa-undo"></i></button>
          
          
         
        </div>
        
    
      </div>
    </div>
  </div>

  </div>
  <!--model ends for doctor available button here-->
         
                      
<div class="modal fade" id="mylogin">
    <div class="modal-dialog modal-dialog-centered" >
      <div class="modal-content" style="width:330px">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"> <i class=" fa-3x fa fa-user"></i></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <form  method="POST"action="index.jsp">
         <label for="uname"><b>Username</b></label>
         <input type="text" class="model_Input" placeholder="Enter Username" name="user" required>

          <label for="psw"><b>Password</b></label>
          <input type="password" class="model_Input" placeholder="Enter Password" name="pass" required>
            
          
          <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
          </label>

          <button type="submit"  class="model_submit_btn">Login </button>
    </div>
       

          </form> 
        
        <!-- Modal footer -->
        <div class="modal-footer" style="background-color: cadetblue;">
          <span class="psw">Forgot <a href="#">password?</a></span>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          
          
        </div>
        
      </div>
    </div>
  </div>

 


      
    


<script type="text/javascript">


document.getElementById("id002").style.visibility = "hidden";
 $(document).ready(function(){


 $("#getotp").click(function(){
  if( $("#mobile-no").val().trim()==""){
    swal("Oops!", "Please enter your mobile no!", "info");
  }

else if($("#mobile-no").val().trim().length!=10){
  alert("Enter 10 digit for mobile no");

}
else{$.ajax({url: "pages/smsApi.jsp", dataType:"json",data: {"mobile":$("#mobile-no").val()},success: function(result){


    $("#otp").val(result);

 }});
}

});
 $("#cont").click(function(){
if($("#getOTP").val().trim()==""){
  swal("Hey!", "Enter Details!", "error");
 }
 else{


if($("#otp").val()==$("#getOTP").val()){

  location.href="pages/appointment.jsp";
}
 else{alert("plz enter valid otp");}
}

});});


</script>

</html>

