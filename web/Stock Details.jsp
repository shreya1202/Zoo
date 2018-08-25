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
    int p=1;
%>
<html
    <body>
        <div class="store">
            <table id="tabstyle">
            <tr>
                    <td> Name </td>
                    <td> Total animals </td>
                    <td> Food Requirement </td>
                    <td> Amount of food fed </td>
                    <td> Food feed at the right time(Yes/No)</td>
                </tr>
               <%
            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
                while(p<16)
                {
                PreparedStatement pst = connection.prepareStatement("Select * from animals where Number=?");
                pst.setInt(1, p);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("Name")%></td>
                    <td><%=rs.getString("total_animals")%></td>
                    <td><%=rs.getString("total_food_req")%></td>
                    <td><%=rs.getString("food_feed")%></td>
                    <td><%=rs.getString("right_food_time")%></td>
                </tr>
                <%
                    }
                p++;
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
