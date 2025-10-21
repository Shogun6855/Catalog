package com.catalog;
import java.io.Serializable;

public class CartItem implements Serializable {
    private String name;
    private double price;
    private int quantity;
    
    public CartItem(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }
    
    public String getName() { return name; }
    public double getPrice() { return price; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public double getAmount() { return price * quantity; }
}
