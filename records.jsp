<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //suport HTTP 1.1
    
     //   response.setHeader("Pragma", "no-cache"); //suport Http 1.0
    
     //   response.setHeader("Expires", "0"); //suport proxies
    
    if (session.getAttribute("username") == null)
         response.sendRedirect("index.html");
%>  


<!DOCTYPE html>
<html>
    <%@ include file="header.jsp" %>
    <!--Search Bar and Heading-->
    <div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
            <form action="" method="get">
                <input type="text" class="form-control" name="q" placeholder="Search here...."/>
            </form>
        </div>
    </div>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>FUll NAME</th>
                    <th>EMAIL</th>
                    <th>Mobile No.</th>
                    <th>Adhaar No.</th>
                    <th>Work Profession</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Postal Code</th>
                    <th class="text-center">EDIT</th>
                   
                    <th class="text-center">VIEW</th> 
                </tr>
            </thead>
            <tbody>
                <%
                     Connection con;
                     Statement st;
                     ResultSet rs;
                     Class.forName("com.mysql.cj.jdbc.Driver");          
                     con= DriverManager.getConnection("jdbc:mysql://localhost:3306/entry","root","");
                     st = con.createStatement();
                     String query = request.getParameter("q");
                     String data;
                     if(query!=null)//Search bar query else part query for in terms of search bar failure or null result
                     {
                         data = "select * from entrec where fullname like '%"+query+"%' or email like '%"+query+"%' or mobno like '%"+query+"%' or aadharno like '%"+query+"%' or workpro like '%"+query+"%' or gender like '%"+query+"%' or city like '%"+query+"%' or addr like '%"+query+"%' or postalcode like '%"+query+"%'";
                     }else{
                         data = "select * from entrec order by id desc";
                     }
                  //String data = "select * from entrec";
                    %>
            <br>
                  <%   rs = st.executeQuery(data);
                     while(rs.next()){
                         %>
                <tr><!--Setting records in table via html-->
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("fullname")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("mobno")%></td>
                    <td><%=rs.getString("aadharno")%></td>
                    <td><%=rs.getString("workpro")%></td>
                    <td><%=rs.getString("gender")%></td>
                    <td><%=rs.getString("city")%></td>
                    <td><%=rs.getString("addr")%></td>
                    <td><%=rs.getString("postalcode")%></td>
                    <td><a href='edit.jsp?u=<%=rs.getString("id")%>' class="btn btn-warning">Edit</a></td>                       
       
                    <td><a href='view.jsp?s=<%=rs.getString("id")%>'class="btn-primary btn">View</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            
 <!--Pop up view start-->
 
 <!-- Pop up view end-->
    <%@ include file="footer.jsp" %>
    
</html>
