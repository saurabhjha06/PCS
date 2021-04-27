<%@page import="java.io.BufferedReader,
 java.io.InputStreamReader,
 java.io.OutputStreamWriter,
 java.net.URL,
 java.net.URLConnection,
 java.net.URLEncoder,
 java.util.*" %>
<%
try {       //String otp="x";

           int len = 4;
        
        // Using numeric values 
        String num = "0123456789"; 
  
        // Using random method 
        java.util.Random rndm_method = new java.util.Random(); 
  
        char[] otp = new char[len]; 
  
        for (int i = 0; i < len; i++) 
        {
            otp[i] = num.charAt(rndm_method.nextInt(num.length())); 
        } 
        
        String one = new String(otp);
        int var=Integer.parseInt(one); 
         out.print(var);


			// Construct data
			String apiKey = "apikey=" + URLEncoder.encode("eGFnmAHMpF8-oe6qdaFkNb62K1pMqI2bSQ96vFIbRq", "UTF-8");
			String message = "&message=" + URLEncoder.encode(one+" Is Otp to register doctor's appointment. Don't share this", "UTF-8");
			String sender = "&sender=" + URLEncoder.encode("TXTLCL", "UTF-8");
			String numbers = "&numbers=" + URLEncoder.encode(request.getParameter("mobile"), "UTF-8");
			
			// Send data
			String data = "https://api.textlocal.in/send/?" + apiKey + numbers + message + sender;
			URL url = new URL(data);
			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			
			// Get the response
			BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			String sResult="";
			while ((line = rd.readLine()) != null) {
			// Process line...
				sResult=sResult+line+" ";
			}

			rd.close();
			

			// setting the length of otp
        
		}	//return sResult;
			 //out.print(otp);
        catch (Exception e) {
			out.println("Error SMS "+e);
			//return "Error "+e;
		} 



%>

			
