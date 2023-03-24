package com.example.cupcake.Entities;

public class Order {
    int idOrder;
    int base;
    int topping;
    int price;
    int cartID;
    int quantity;

    public Order(int idOrder, int base, int topping, int price, int cartID, int quantity) {
        this.idOrder = idOrder;
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

    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getTopping() {
        return topping;
    }

    public void setTopping(int topping) {
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
