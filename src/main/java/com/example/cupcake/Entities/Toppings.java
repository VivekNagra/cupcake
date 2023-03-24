package com.example.cupcake.Entities;

public class Toppings {
    private int id;
    private String name;
    private int price;


    public Toppings(int id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Toppings(String name, int price){
        this.name = name;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "name= " + name + " " +
                " price= " + price;
    }
}
