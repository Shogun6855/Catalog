# JSP Catalog Application

A simple JSP-based web application for managing a shopping cart with sessions.

## Features
- Product catalog page displaying items with name, price, and description
- Add to cart functionality with quantity selection
- Shopping cart page showing cart items dynamically
- Session management for cart persistence
- Clear cart functionality

## Project Structure
```
Catalog/
├── WEB-INF/
│   ├── web.xml
│   └── classes/
│       └── com/
│           └── catalog/
│               ├── CartItem.java (Model)
│               └── AddToCartServlet.java (Controller)
├── catalog.jsp (View - Product Catalog)
├── cart.jsp (View - Shopping Cart)
├── clearCart.jsp (View - Clear Cart)
└── deploy.ps1 (Deployment Script)
```

## Technologies Used
- JSP (JavaServer Pages)
- Java Servlets
- HTTP Sessions
- Apache Tomcat

## How to Run
1. Ensure Apache Tomcat and JDK are installed
2. Set `CATALINA_HOME` environment variable
3. Run the deployment script:
   ```powershell
   .\deploy.ps1
   ```
4. Access the application at: `http://localhost:8080/Catalog/`

## How It Works
- User selects products and quantities from the catalog
- AddToCartServlet processes requests and stores cart in HTTP session
- Cart data persists across page requests using sessions
- Cart page retrieves and displays items dynamically from session

## Formula
Simple Interest: **SI = (P × R × N) / 100**
- P = Principal Amount
- R = Rate of Interest
- N = Time Period
