<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <%
         String username = request.getParameter("username");
         String password = request.getParameter("userpassword");
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/entry", "root", "");
            PreparedStatement pst = conn.prepareStatement("Select username,password from users where username=? and password=?");
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            

            if (rs.next()) {
                session.setAttribute("username", username);
                out.println("Correct login credentials");
                request.getRequestDispatcher("afterlogin.jsp").forward(request, response);
                 //response.sendRedirect("afterlogin.jsp");
            } 
            else {
                out.println("Incorrect login credentials");
                request.getRequestDispatcher("index.html").forward(request, response);
            }
         
       
         
    %>


</html>
