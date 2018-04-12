<%@include file= "verifyLogin.jsp" %>

<% 
String  fname = request.getParameter("FirstName");
String lname  = request.getParameter("LastName");
String userN  = request.getParameter("Username");
String password = request.getParameter("Password");
char type = request.getParameter("Type").charAt(0);
char status =  request.getParameter("Status").charAt(0);

User userToEdit = new User(fname, lname, userN, password, type, status); 


uc.editUser(userToEdit);

response.sendRedirect("Menu.jsp");

%>