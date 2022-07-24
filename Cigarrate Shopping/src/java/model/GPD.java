/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class GPD {
    private String country;
    private int numberofcases;
    private int population;
    private int gdp;

    public GPD() {
    }

    public GPD(String country, int numberofcases, int population, int gdp) {
        this.country = country;
        this.numberofcases = numberofcases;
        this.population = population;
        this.gdp = gdp;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getNumberofcases() {
        return numberofcases;
    }

    public void setNumberofcases(int numberofcases) {
        this.numberofcases = numberofcases;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public int getGdp() {
        return gdp;
    }

    public void setGdp(int gdp) {
        this.gdp = gdp;
    }
    
    
    
}
