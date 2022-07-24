/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author admin
 */
public class Product {
    private int id;
    private String name;
    private int price;
    private int quanlity;
    private String image;
    private Category category;
    public Product() {
    }

    public Product(int id, String name, int price, int quanlity, String image, Category category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quanlity = quanlity;
        this.image = image;
        this.category = category;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

 
    
    
}
