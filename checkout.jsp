<%@ page import="java.util.HashMap" %>
<%-- 
    Document   : checkout
    Created on : 14 Feb, 2020, 9:39:58 AM
    Author     : ADMIN
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ page import="com.vvp.web.Product" %>
<html>
<head>
    <title>Checkout</title>
    <%
        if(request.getParameter("delete") != null){
            Integer removeItem = Integer.parseInt(request.getParameter("delete"));
            HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
            cartItems.remove(removeItem);
            session.setAttribute("cart",cartItems);
        }
    %>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Remove</th>
        </tr>
    <%
        if(session.getAttribute("cart") != null){
            HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
            Collection<Integer> pids = cartItems.keySet();
            Collection<Integer> qtys = cartItems.values();
            HashMap<Integer, Product> products = (HashMap<Integer,Product>)application.getAttribute("products");
            Iterator pidIterator = pids.iterator();
            Iterator pidGetter = pids.iterator();
            Iterator qtyIterator = qtys.iterator();
            while(pidIterator.hasNext()){
                Product temp = products.get(pidIterator.next());
                Integer tempQuantity = (Integer) qtyIterator.next();
                out.println("<tr>");
                out.println("<td>");
                out.println(temp.getProductId());
                out.println("</td>");
                out.println("<td>");
                out.println(temp.getProductName());
                out.println("</td>");
                out.println("<td>");
                out.println(temp.getProductDescription());
                out.println("</td>");
                out.println("<td>");
                out.println(temp.getProductPrice());
                out.println("</td>");
                out.println("<td>");
                out.println(tempQuantity);
                out.println("</td>");
                out.println("<td>");
                out.println("<form action='checkout.jsp' method='post'> " +
                        "<input type='hidden' name='delete' value='" + pidGetter.next() + "'>" +
                        "<input type='submit' name='submit' value='delete'>" +
                        "</form>"
                );
                out.println("</td>");
                out.println("</tr>");
            }
        }
    %>
    </table>
</body>
</html>