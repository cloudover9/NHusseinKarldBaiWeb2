

<%@include file= "verifyLogin.jsp" %>

<%  //Page Add_action.jsp should then create a new User object using the submitted information
//and use the UserConroller session variable to call method addUser by passing the
//newly created User object (PS: this method will fail if the provided username is not unique).
//Finally, page Add_action.jsp should redirect to Menu.jsp.  

String  fname = request.getParameter("FirstName");
String lname  = request.getParameter("LastName");
String userN  = request.getParameter("Username");
String password = request.getParameter("Password");
char type = request.getParameter("Type").charAt(0);
char status =  request.getParameter("Status").charAt(0);

User user1 = new User(fname, lname, userN, password, type, status); 


uc.addUser(user1);

response.sendRedirect("Menu.jsp");
%>