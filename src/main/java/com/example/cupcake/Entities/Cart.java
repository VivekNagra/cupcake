package com.example.cupcake.Entities;

public class Cart {
    int idCart;
    int customer;
    int order;
    int order_time;
    int total_time;

    public Cart(int userId, int customer, int order, int order_time, int total_time) {
        this.idCart = idCart;
        this.customer = customer;
        this.order = order;
        this.order_time = order_time;
        this.total_time = total_time;
    }
}
