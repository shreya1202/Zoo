<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="Stock Manager.html" %>
<%
try {
Class.forName("com.mysql.jdbc.Driver");

} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
%>
<!DOCTYPE html>
<html>
    <link href='style2.css' type="text/css" rel='stylesheet'>
    <body>
        
        <div class="edit"> 
            <form>
                Select the type of stock to be added.. </br>
                <input type="radio" name="type" value="Flesh"> <label>Flesh</label></br>
            <input type="radio" name="type" value="Grasses"> <label>Grasses</label> </br>
                <input type="radio" name="type" value="Fruits and leaves"> <label>Fruits and leaves</label> </br>
                <input type="radio" name="type" value="Fruits and insects"> <label>Fruits and insects</label> </br>
                <input type="radio" name="type" value="Insects, fishes and reptiles"> <label>Insects, fishes and reptiles</label></br>
                <input type="radio" name="type" value="Mammals, birds and lizards"> <label>Mammals, birds and lizards</label></br>
                <input type="radio" name="type" value="Algae"> <label>Algae</label></br></br>
                Amount of stock to be added.. </br></br>
                <input type="Number" name="edit">
                <input type="submit" name="Submit" value="submit">
        </form>
                </div>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
statement=connection.createStatement();
int n=Integer.parseInt(request.getParameter("edit"));
String s=request.getParameter("type");
PreparedStatement ps=connection.prepareStatement("Select * from stock where Stock_type=?");
ps.setString(1, s);
ResultSet rs=ps.executeQuery();
rs.next();
int c=rs.getInt("current_stock");
c=c+n;
PreparedStatement p=connection.prepareStatement("Update stock set current_stock=? where Stock_type=?");
p.setInt(1, c);
p.setString(2, s);
p.executeUpdate();
}
catch(Exception e)
{
    e.printStackTrace();
}
%>
    </body>
    </html>