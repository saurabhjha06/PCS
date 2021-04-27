<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href='<%=getServletContext().getInitParameter("base_url")%>/resources/css/bootstrap.css'>
<link rel="stylesheet" type="text/css" href='<%=getServletContext().getInitParameter("base_url")%>/resources/css/button.css'>
<link rel="stylesheet" type="text/css" href='<%=getServletContext().getInitParameter("base_url")%>/resources/js/bootstrap.js'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style> 

.heading{

	
font-size:30px;color:#ffffff; background-color:#00718bfa; margin:0px;
padding:10px;
}


</style>

</head><body> <!--<img src='<%=getServletContext().getInitParameter("base_url")%>/mypic.jpg'>-->
<div class=" heading">
	
<button type="button"  id="id002" style="float:right;margin-top:3px;"class="btn button"style="background-color: #4CAF50;"><i class=" fa fa-2x fa-unlock-alt">
</i> logout
</button>

<button type="button" id="loginCh" class="btn button"data-toggle="modal" data-target="#mylogin" style="float:right;margin-top: 3px"><i class=" fa fa-2x fa-user"></i> Login</button>
<!-- <button type="button" id="id001" onclick="document.getElementById('id01').style.display='block'" style="float:right;margin-top:3px;"class="btn button"style="background-color: #4CAF50;"><i class=" fa fa-2x fa-user">
</i> login
</button> -->
<p style="font-family: 'Zapf Chancery', cursive;"> welcome to online consultation system(e-registration) </p>
</div>

    
<script type="text/javascript">
                            document.getElementById("id002").onclick = function () {
                                location.href = "<%=getServletContext().getInitParameter("base_url")%>/pages/includes/logout.jsp";
                            }

                            
                        </script>