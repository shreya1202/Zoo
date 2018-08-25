<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="manager.html"%> 
<link href="style1.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
    color: red;
}
</style>
        <%
    try {
        Class.forName("com.mysql.jdbc.Driver");

    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    int n;
    String s;
%>
<html
    <body>
        <div class="contain">
            <table id="tabstyle">
            <tr>
                    <td> Feedback </td>
                    <td> Rating </td>
                </tr>
               <%
            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
                PreparedStatement pst = connection.prepareStatement("Select * from feedback");
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    s=rs.getString("rating");
                    n=Integer.parseInt(s);
                %>
                <tr>
                    <td><%=rs.getString("feed")%></td>
                    <td>
                        <%
                            for(int i=1;i<=n;i++)
                            { %>
                            <span class="fa fa-star checked"></span>
                            <%}
                            for(int i=n+1;i<=5;i++)
                            {
                            %>
                            <span class="fa fa-star"></span>
                            <%}%>
                    </td>
                </tr>
                <%
                    
                }
                connection.close(); 
            }
                catch(Exception e)
                        {
                            e.printStackTrace();
                        }  
        %>
            </table>
        </div>
    </body>
</html>
