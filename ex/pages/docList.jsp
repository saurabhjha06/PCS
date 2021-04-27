<%@ include file="../JSP/DbConnect.jsp,java.util.ArrayList"%>

<%
   try{
     String s[]=null;

      st=con.createStatement();
      rs = st.executeQuery("select fname from doctor_info");

       List li = new ArrayList();

       while(rs.next())
       {
           li.add(rs.getString(1));
       }

       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       }

    //jQuery related start
       String query = (String)request.getParameter("q");

       int cnt=1;
       for(int j=0;j<str.length;j++)
       {
           if(str[j].toUpperCase().startsWith(query.toUpperCase()))
           {
              out.print(str[j]+"\n");
              if(cnt>=5)// 5=How many results have to show while we are typing(auto suggestions)
              break;
              cnt++;
            }
       }
    //jQuery related end

rs.close();
st.close();
con.close();

}
catch(Exception e){
out.println("error fetching result");
}

%>