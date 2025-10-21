<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Product Catalog</title>
</head>
<body>
    <h1>Product Catalog</h1>

    <form action="addToCart" method="post">
        <h3>Laptop</h3>
        <p>Price: $800</p>
        <p>Description: High performance laptop</p>
        <input type="hidden" name="productName" value="Laptop">
        <input type="hidden" name="productPrice" value="800">
        Quantity: <input type="number" name="quantity" value="1" min="1">
        <button type="submit">Add to Cart</button>
    </form>
    <hr>

    <form action="addToCart" method="post">
        <h3>Mouse</h3>
        <p>Price: $20</p>
        <p>Description: Wireless mouse</p>
        <input type="hidden" name="productName" value="Mouse">
        <input type="hidden" name="productPrice" value="20">
        Quantity: <input type="number" name="quantity" value="1" min="1">
        <button type="submit">Add to Cart</button>
    </form>
    <hr>

    <form action="addToCart" method="post">
        <h3>Keyboard</h3>
        <p>Price: $50</p>
        <p>Description: Mechanical keyboard</p>
        <input type="hidden" name="productName" value="Keyboard">
        <input type="hidden" name="productPrice" value="50">
        Quantity: <input type="number" name="quantity" value="1" min="1">
        <button type="submit">Add to Cart</button>
    </form>
    <hr>

    <p><a href="cart.jsp">View Cart</a></p>
</body>
</html>
