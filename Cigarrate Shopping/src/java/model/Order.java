/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class Order {
    private int id;
    private String fullname;
    private int user_id;
    private String email;
    private String phone_number;
    private String address;
    private String note;
    private String status;
    private int total_money;
    private Date date;

    public Order() {
    }

    public Order(String fullname, int user_id, String email, String phone_number, String address, String note, String status, int total_money) {
        this.fullname = fullname;
        this.user_id = user_id;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
        this.note = note;
        this.status = status;
        this.total_money = total_money;
    }

    public Order(int id, String fullname, int user_id, String email, String phone_number, String address, String note, String status, int total_money, Date date) {
        this.id = id;
        this.fullname = fullname;
        this.user_id = user_id;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
        this.note = note;
        this.status = status;
        this.total_money = total_money;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTotal_money() {
        return total_money;
    }

    public void setTotal_money(int total_money) {
        this.total_money = total_money;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    
    
    
}
