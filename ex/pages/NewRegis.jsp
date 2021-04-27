<%@ include file="../pages/includes/heading.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
 .Input{
  width:65%;
  padding: 12px 20px;
  margin: 8px 0 0px 35px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
 .MenuOptions{ /* You Can Name it what you want*/
margin-right:16px;
}
.MenuOptions:last-child{
margin-right:0px;
/*so the last one dont push the div thas giving the space only between the inputs*/
}
</style>



<div class="contain">
  <div class="info" style=" border:5px solid black;height:330px; margin:10px;float: right;background-image:url('');">
    <p style="font-family: cursive;
         font-size: 20px;"> This is how it works<br>
         Step1:Register using mobile no & otp<br>
         Step 2:Click on new booking <br>
         Step 3:Complete registration by fiilling details<br>
         Step 4:Get Registration no <br>
         Step 5:Congratulations your appointment has been successfully booked !</p>
  </div>
  <div class="userInput" style="height: 700px;width: 600px;margin:10px;">
    <p style="font-family:Lucida console;font-size: 20px;"> Spend a minute in these details to register</p>
   
    <form>
  
      <input type="text" class="Input" placeholder="Enter Name" required>
      <input type="text" class="Input" placeholder="Enter Contact No" required>
      <input type="text" class="Input" placeholder="Address line 1" required>
      <input type="text" class="Input" placeholder="City" required></span>
      <input type="text" class="Input" placeholder="pincode" required>
      <input type="text" class="Input" placeholder="State" required>
      <input type="text" class="Input" placeholder="Doctor" required>
      <input type="date" class="Input" placeholder="Date" required>
    </form>


    <div class="MenuOptions"style="margin: 40px 25px;height: 90px;padding:10px">
    
    <button class="btn button" id="clear"> Reset</button> 
    <button class="btn button" id="save" style="margin-left:50px;" > Register</button> 

  </div>   
  </div>
   
  </div>









<script type="text/javascript">
                         
                             

                             document.getElementById("id002").style.visibility = "hidden";
                             document.getElementById("loginCh").style.visibility = "hidden";



</script>