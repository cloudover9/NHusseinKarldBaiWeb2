<%@page language="java" import="edu.csbsju.csci230.*"%>
//src.SOURCE_CODE.edu.csbsju.csci230.*;
<% UserController uc1 = new UserController();
    session.setAttribute("uc1", uc1);%>
<%

if(request.getParameter("Username")!=null || request.getParameter("Password")!=null){
    int x=uc1.login(request.getParameter("Username"),request.getParameter("Password")); 
    
    if(x==0){
        
        response.sendRedirect("Menu.jsp");
    }
    else if(x==-1){
        response.sendRedirect("index.jsp?x=-1"); // if usernme i invlid 
    }
    else if(x==-2){
        response.sendRedirect("index.jsp?x=-2"); // if the password is nvalid 
    }
    else if(x==-3){
        response.sendRedirect("index.jsp?x=-3"); // otherwise, cnnot ccess
    }
        

}
%>

