<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.catalog.CartItem" %>
<html>
<head>
    <title>Shopping Cart</title>
</head>
<body>
    <h1>Shopping Cart</h1>

    <%
        HashMap<String, CartItem> cart = (HashMap<String, CartItem>) session.getAttribute("cart");
        
        if (cart == null || cart.isEmpty()) {
    %>
            <p>Your cart is empty!</p>
    <%
        } else {
            double totalAmount = 0;
    %>
            <table border="1">
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                </tr>
    <%
            for (CartItem item : cart.values()) {
                totalAmount += item.getAmount();
    %>
                <tr>
                    <td><%= item.getName() %></td>
                    <td>$<%= item.getPrice() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td>$<%= item.getAmount() %></td>
                </tr>
    <%
            }
    %>
                <tr>
                    <td colspan="3"><strong>Total Amount to be Paid:</strong></td>
                    <td><strong>$<%= totalAmount %></strong></td>
                </tr>
            </table>
    <%
        }
    %>

    <br>
    <p><a href="catalog.jsp">Back to Catalog</a></p>
    <p><a href="clearCart.jsp">Clear Cart</a></p>
</body>
</html>
