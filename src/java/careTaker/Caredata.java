/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package careTaker;
import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Caredata extends HttpServlet{
  public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    
        try{
      String Health = request.getParameter("Health");
      int food_feed = Integer.parseInt(request.getParameter("food_feed"));
      String right_food_time=request.getParameter("right_food_time");
           int num=Integer.parseInt(request.getParameter("Number"));
           String stock=request.getParameter("Type");
            Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo","root","pragya");
      PreparedStatement p=con.prepareStatement("Select * from animals where Number=?");
      p.setInt(1,num);
      PreparedStatement ps=con.prepareStatement("Select * from stock where Stock_type=?");
      ps.setString(1, stock);
      ResultSet rs=p.executeQuery();
      ResultSet r=ps.executeQuery();
      r.next();
      int st=r.getInt("current_stock");
      st=st-food_feed;
      String s="";
      while(rs.next())
      {
      s=rs.getString("Name");
      }
      PreparedStatement pst = con.prepareStatement("Update animals set Health=?,food_feed=?,right_food_time=? where Number=?");
      PreparedStatement pt=con.prepareStatement("Update stock set current_stock=? where Stock_type=?");
      pst.setString(1,Health);
      pst.setInt(2,food_feed);
      pst.setString(3,right_food_time);
      pst.setInt(4,num);
      pst.executeUpdate();
      pt.setInt(1,st);
      pt.setString(2, stock);
      pt.executeUpdate();
      response.sendRedirect(s+".jsp");
       
    }
    catch (Exception e){
      out.println(e);
      out.println("failed to insert the data");
    }
  }
}