package com.example.cupcake.Entities;

public class Base {
    private int id;
    private String name;
    private int price;


    public Base(int id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Base(String name, int price){
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
