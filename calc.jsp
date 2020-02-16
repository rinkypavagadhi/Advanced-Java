<%-- 
    Document   : calc
    Created on : 24 Jan, 2020, 10:31:45 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="post">
            <input type="text" name="n1"><br/>
            <input type="text" name="n2"><br/>
            <input type="submit" name="operation" value="+">
             <input type="submit" name="operation" value="-">
             <input type="submit" name="operation" value="*">
              <input type="submit" name="operation" value="/">
             
         </form>
         <%! public double add(double n1,double n2){
                return(n1+n2);
         }
         public double sub(double n1,double n2){
                return(n1-n2);
         }
         public double mult(double n1,double n2){
                return(n1*n2);
         }
         public double div(double n1,double n2){
                return(n1/n2);
         }

         %>

         <%
            try{
         double n1=Double.parseDouble(request.getParameter("n1"));
         double n2=Double.parseDouble(request.getParameter("n2"));
         char op= request.getParameter("operation").charAt(0);
         double result=0;

         
         switch(op)
          {
                case '+':result=add(n1,n2);
                            break;
                case '-':result=sub(n1,n2);
                            break;
                case '*':result=mult(n1,n2);
                            break;
                case '/':result=div(n1,n2);
                            break;

         }
         out.println("Result" + result);
         }finally{
             out.close();
             }

         

          %>

    </body>
</html>
