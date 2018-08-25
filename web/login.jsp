<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");

    }
    catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;

    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
    String userid=request.getParameter("userid");
    String pwd=request.getParameter("pwd");
    String x=request.getParameter("x");
    if(x.equals("admin"))
    {
        if((userid.equals("stark"))&&(pwd.equals("password")))
        {
            response.sendRedirect("Stock Details.jsp");
        }
        else
        {
            response.sendRedirect("error.html");
        }
    }
    else
    {
        if(x.equals("stock"))
        {
            if(userid.equals("thor")&&pwd.equals("password"))
            {
                response.sendRedirect("View Stock.jsp");
            }
            else
            {
                response.sendRedirect("error.html");
            }
        }
        else
        {
            int f=0;
            PreparedStatement ps= connection.prepareStatement("SELECT * FROM caretaker");
            String sql = "SELECT * FROM caretaker";
            ResultSet rs= ps.executeQuery();
           while(rs.next())
           {
            String s=rs.getString("pwd");
            String u=rs.getString("userid");
            if((pwd.equals(s))&& (userid.equals(u)))
                f=1;
            }
            if(f==1)
                response.sendRedirect("Bengal Tiger.jsp");
            else
                response.sendRedirect("error.html");
        }
    }


%>