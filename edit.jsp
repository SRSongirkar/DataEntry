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
>

<!DOCTYPE html>
<html>
  <%@ include file="header.jsp" %>
  <p><br/></p>
  <%
      Connection con;
      Statement st;
      ResultSet rs;
      PreparedStatement pst;
      Class.forName("com.mysql.jdbc.Driver").newInstance();          
      con= DriverManager.getConnection("jdbc:mysql://localhost:3306/entry","root","");
      
  %>
  <form action="" method="post">
      <%
          st = con.createStatement();
          String u = request.getParameter("u");
          int num = Integer.parseInt(u);
          String data= "select * from entrec where id='"+num+"'";
          rs = st.executeQuery(data);
          while(rs.next()){
          
      %>
      <input type="hidden" name="id" value='<%=rs.getString("id")%>'/>
                             <div class="form-group">
                                  <input type="text" name="fname" class="form-control" value='<%=rs.getString("fullname")%>'>
                              </div>
                             <div class="form-group">
                                   <input type="email" name="email" class="form-control" value='<%=rs.getString("email")%>'>
                              </div>
                              <div class="form-group">
                                   <input type="text" name="mobno" maxlength="10" class="form-control" value='<%=rs.getString("mobno")%>'>
                              </div>
                             <div class="form-group">
                                   <input type="text" name="adhno" maxlength="12" class="form-control" value='<%=rs.getString("aadharno")%>'>
                              </div>
                             <div class="form-group">
                                   <input type="text" name="workprof" class="form-control" value='<%=rs.getString("workpro")%>'>
                              </div>
                             <div class="form-group">
                                 <input type="text" id="male" name="gender" value='<%=rs.getString("gender")%>'>
                                
                              </div>
                              <div class="form-group">
                                   <input type="text" name="address" class="form-control" value='<%=rs.getString("addr")%>'>
                              </div>
                             <div class="form-group">
                                   <input type="text" name="city" class="form-control" value='<%=rs.getString("city")%>'>
                              </div>
                            
                             <div class="form-group">
                                   <input type="text" name="pscode" class="form-control" value='<%=rs.getString("postalcode")%>'>
                              </div>
                             
    <%
        }
    %>                          
                              
                              <div class="form-group">
                                   <center><button type="submit" name="submit" value="SignUP"class="btn-primary btn">Update</button>
                                   <button type="reset" class="btn-primary btn">Reset</button></center>
                                   <a href="records.jsp" class="btn btn-info">BACK</a>
                                   
                              </div>
      
  </form>
  <%@ include file="footer.jsp" %>  
</html>
<%
    String a = request.getParameter("id");
    String b = request.getParameter("fname");
    String c = request.getParameter("email");
    String d = request.getParameter("mobno");
    String e = request.getParameter("adhno");
    String f = request.getParameter("workprof");
    String g = request.getParameter("gender");
    String h = request.getParameter("address");
    String i = request.getParameter("city");
    String j = request.getParameter("pscode");
    
     
    
    if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null && g!=null && h!=null && i!=null && j!=null  )
    {
         
           String query = "update entrec set fullname=?,email=?,mobno=?,aadharno=?,workpro=?,gender=?,city=?,addr=?,postalcode=? where id='"+a+"'";
           pst = con.prepareStatement(query);
            pst.setString(1,b);
            pst.setString(2,c);
            pst.setString(3,d);
            pst.setString(4,e);
            pst.setString(5,f);
            pst.setString(6,g);
            pst.setString(7,h);
            pst.setString(8,i);
            pst.setString(9,j);
            pst.executeUpdate();
            out.println("val is: "+ a);
            out.println("val is: "+ b);
            response.sendRedirect("records.jsp");
    }

%>