

<%@include file= "verifyLogin.jsp" %>

<%
    out.println("delete user : " + request.getParameter("Username"));



String username = request.getParameter("Username");
uc.deleteUser(uc.getSpecificUser(username)); // get the user 
response.sendRedirect("Menu.jsp"); //redirect 
%>