/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sio.paris2024.model;

import java.time.LocalDate;

/**
 *
 * @author zakina
 */
public class Athlete {
    
    private int id;
    private String nom ;
    private String prenom;
    private LocalDate datenaiss;
    private Pays pays ;
    
    public Athlete() {
    }

    public Athlete(int id, String nom) {
        this.id = id;
        this.nom = nom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getPrenom() {
        return prenom;
    }
    
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public LocalDate getDateNaiss() {
        return datenaiss;
    }
    
    public void setDateNaiss(LocalDate datenaiss) {
        this.datenaiss = datenaiss;
    }
    
    public Pays getPays() {
        return pays;
    }

    public void setPays(Pays pays) {
        this.pays = pays;
    }
    
    
}