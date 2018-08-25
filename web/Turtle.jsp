<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="CareTaker.html" %>
<%
try {
Class.forName("com.mysql.jdbc.Driver");

} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
String s;
%>
<!DOCTYPE html>
<html>
    <link href='style.css' type="text/css" rel='stylesheet'>
    <body>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
statement=connection.createStatement();
String sql ="Select * from animals where Number=13";
PreparedStatement ps=connection.prepareStatement("Select * from stock where Stock_type=?");
ps.setString(1,"Insects, fishes and reptiles");
ResultSet r=ps.executeQuery();
r.next();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{
%>
<div class="container" style=" background-image:url(<%=rs.getString("image")%>)">
<div class="name">
    <%=rs.getString("Name")%>
</div>
<div class="date">
    Date Of Arrival:
    <%=rs.getString("Date_of_Arrival")%>
    <br/>Total reptiles:
    <%=rs.getInt("total_animals")%>
</div>
<div class="input">
     <form action="Caredata">
                    <input name="Number" type="hidden" Value="13">
                    <input name="Type" type="hidden" Value="Insects, fishes and reptiles">
                    Health : <input name="Health" type="text" placeholder="Critical/Non-critical"></br>
                    </br>Total Food Requirement : <%=rs.getString("total_food_req")%> Units</br>
                    </br>Current food stock : <%=r.getInt("current_stock")%> Units </br>
                    Amount of food feed : <input name="food_feed" type="number"/></br>
                    </br>Time of feeding : <%=rs.getString("food_time")%></br>
                    Food fed at the right time :<input name="right_food_time" type="text" placeholder="Yes/No"/></br>
                    </br><button onclick="myFunction()">Submit</button>
                    <script>
                        function myFunction() {
                            alert("Record has been updated");
                        }
                    </script>
                </form>
</div>
<%} 
statement.close();
rs.close();
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>