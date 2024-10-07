/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sio.paris2024.model;

import java.util.ArrayList;

/**
 *
 * @author SIO2
 */
public class Sport {
    
    private int id;
    private String libelle ;
    private ArrayList<Epreuve> lesEpreuves;

    
    public Sport() {
    }

    public Sport(int id, String nom) {
        this.id = id;
        this.libelle = libelle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    
    public ArrayList<Epreuve> getLesEpreuves() {
        return lesEpreuves;
    }
    
}
