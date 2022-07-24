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
public class OrderDetail {

    private int id;
    private int order_id;
    private int product_id;
    private int price;
    private int num;
    private int total_price;

    public OrderDetail() {
        this.id = id;
    }

    public OrderDetail(int order_id, int product_id, int price, int num, int total_price) {
        this.id = id;
        this.order_id = order_id;
        this.product_id = product_id;
        this.price = price;
        this.num = num;
        this.total_price = total_price;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }
    
    
}
