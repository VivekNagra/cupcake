package com.example.cupcake.Entities;

public class Order {
    private int idOrder;
    private String base;
    private String topping;
    private int price;
    private int cartID;
    private int quantity;

    public Order(int idOrder, String base, String topping, int price, int cartID, int quantity) {
        this.idOrder = idOrder;
        this.base = base;
        this.topping = topping;
        this.price = price;
        this.cartID = cartID;
        this.quantity = quantity;
    }

    public Order(String base, String topping, int price, int cartID, int quantity)
    {
        this.topping = topping;
        this.base = base;
        this.topping = topping;
        this.price = price;
        this.cartID = cartID;
        this.quantity = quantity;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public String getBase() {
        return base;
    }

    public void setBase(String base) {
        this.base = base;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
