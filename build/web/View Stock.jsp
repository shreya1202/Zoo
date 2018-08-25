<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Stock Manager.html"%> 
<link href="style2.css" type="text/css" rel="stylesheet">
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
                    <td> Type of stock </td>
                    <td> Required Stock </td>
                    <td> Current Stock </td>
                </tr>
               <%
            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
                
                PreparedStatement pst = connection.prepareStatement("Select * from stock");
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("Stock_type")%></td>
                    <td><%=rs.getString("req_stock")%></td>
                    <td><%=rs.getString("current_stock")%></td>
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

