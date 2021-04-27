<%@ include file="../pages/includes/heading.jsp"%>

<style>
	body{
		background-image:url('../resources/images/cp.jpg');
		background-repeat:no-repeat;
		background-size: cover;
       /* background-size:cover;*/
	}
/* Style the links inside the sidenav */
#mySidenav a {
  position: absolute; /* Position them relative to the browser window */
  left: -15px; /* Position them outside of the screen */
  transition: 0.3s; /* Add transition on hover */
  padding: 15px; /* 15px padding */
  width: 200px;/* a specific width */
  text-decoration: none; /* Remove underline */
  font-size: 20px; /* Increase font size */
  color: white; /* White text color */
  border-radius: 0 5px 5px 0; /* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
  left: 45px; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#about {
  top: 20px;
  background-color: #4CAF50;
}

#blog {
  top: 80px;
  background-color: #2196F3; /* Blue */
}

#projects {
  top: 140px;
  background-color: #f44336; /* Red */
}

#contact {
  top: 200px;
  background-color:#00718bfa; /* Light Black */
}
#mySidenav{
	top:-20px;
	position: relative;
	

}

</style>	

<div id="mySidenav" class="sidenav">
  <a href="#" id="about">New Appointment </a>
  <a href="#" id="blog">Doctors Available</a>
  <a href="#" id="projects">Video Consultation</a>
  <a href="#" id="contact">Reports</a>
</div>

<div class="container" >
<br><br><br><br><br><br><br><br><br><br><br><br>

<p style="font-size:30px;"><marquee>Here on this portal book appointment 24*7 or consulting related queries to you<br>
	Find almost all the popular and experienced doctor from the city<br>
Choose the schedule and avoid long waiting hours !!</p> </marquee>

</div>

<script type="text/javascript">
                            document.getElementById("about").onclick = function () {
                                location.href = "NewRegis.jsp";
                            };


                            document.getElementById("id002").style.visibility = "hidden";
                            document.getElementById("loginCh").style.visibility = "hidden";
                        </script>