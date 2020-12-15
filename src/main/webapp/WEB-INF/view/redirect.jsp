<%@ page import = "java.io.*,java.util.*" %>
<html>
   <head>
      <title>Page Redirection</title>
   </head>
   
   <body>
      <%
         response.setStatus(response.SC_MOVED_PERMANENTLY);
         response.setHeader("Location", (String) request.getAttribute("redirectUrl")); 
      %>
   </body>
</html>