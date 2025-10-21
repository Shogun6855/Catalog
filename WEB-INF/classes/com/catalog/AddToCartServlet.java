package com.catalog;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        HttpSession session = request.getSession();
        HashMap<String, CartItem> cart = (HashMap<String, CartItem>) session.getAttribute("cart");
        
        if (cart == null) {
            cart = new HashMap<String, CartItem>();
        }
        
        if (cart.containsKey(productName)) {
            CartItem item = cart.get(productName);
            item.setQuantity(item.getQuantity() + quantity);
        } else {
            CartItem item = new CartItem(productName, productPrice, quantity);
            cart.put(productName, item);
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect("catalog.jsp");
    }
}
