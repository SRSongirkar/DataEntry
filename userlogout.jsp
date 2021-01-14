<%-- 
    Document   : userlogout
    Created on : Dec 9, 2020, 5:17:07 PM
    Author     : SHRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //suport HTTP 1.1
    
     //   response.setHeader("Pragma", "no-cache"); //suport Http 1.0
    
     //   response.setHeader("Expires", "0"); //suport proxies
    
    if (session.getAttribute("username") == null)
         response.sendRedirect("index.html");
%>  

<%
session.setAttribute("username", null);
session.invalidate();

response.sendRedirect("index.html");
%>
