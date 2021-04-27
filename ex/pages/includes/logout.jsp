<% session.removeAttribute("admin");
  

response.sendRedirect(getServletContext().getInitParameter("base_url"));
%>