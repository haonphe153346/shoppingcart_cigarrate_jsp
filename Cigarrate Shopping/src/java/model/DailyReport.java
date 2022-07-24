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
public class DailyReport {
    int non_customer;
    int customer;
    Date date;

    public DailyReport() {
    }

    public DailyReport(int non_customer, int customer, Date date) {
        this.non_customer = non_customer;
        this.customer = customer;
        this.date = date;
    }

    public int getNon_customer() {
        return non_customer;
    }

    public void setNon_customer(int non_customer) {
        this.non_customer = non_customer;
    }

    public int getCustomer() {
        return customer;
    }

    public void setCustomer(int customer) {
        this.customer = customer;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
}
