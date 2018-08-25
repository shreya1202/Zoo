<%-- 
    Document   : logout
    Created on : Jul 1, 2018, 12:40:24 AM
    Author     : Dell
--%>


        <%
HttpSession newsession = request.getSession(false);
    if (newsession != null) 
    {
         newsession.invalidate();

    }

   response.sendRedirect("login.html");
   %>