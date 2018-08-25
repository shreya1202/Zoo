<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="manager.html"%> 
<link href="style1.css" type="text/css" rel="stylesheet">
        <%
    try {
        Class.forName("com.mysql.jdbc.Driver");

    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    String s[]=new String[16];
    int r=1;
%>
<html
    <body>
        <div class="box">
            <table id="tabstyle">
            <tr>
                    <td> Animals </td>
                    <td> Health Status </td>
                </tr>
               <%
            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
                while(r<16)
                {
                PreparedStatement pst = connection.prepareStatement("Select * from animals where Number=?");
                pst.setInt(1, r);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                //s[r]=rs.getString("Health");
                %>
                <tr>
                    <td><%=rs.getString("Name")%></td>
                    <td><%=rs.getString("Health")%></td>
                </tr>
                <%
                    }
                r++;
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
