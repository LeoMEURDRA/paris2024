/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sio.paris2024.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import sio.paris2024.model.Athlete;
import sio.paris2024.model.Sport;

/**
 *
 * @author SIO2
 */
public class DaoSport {
    
    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;
    
    public static ArrayList<Sport> getLesSports(Connection cnx){
        
        ArrayList<Sport> lesSports = new ArrayList<Sport>();
        try{
            requeteSql = cnx.prepareStatement("select s.id as s_id, s.libelle as s_libelle from sport s");
            //System.out.println("REQ="+ requeteSql);
            resultatRequete = requeteSql.executeQuery();
            
            while (resultatRequete.next()){
                
                Sport s = new Sport();
                   s.setId(resultatRequete.getInt("s_id"));
                   s.setLibelle(resultatRequete.getString("s_libelle"));
                  
                lesSports.add(s);
            }
           
        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesSports e généré une erreur");
        }
        return lesSports;
    }
    
    public static Sport getSportById(Connection cnx, int idSport){
        
        Sport s = new Sport();
        try{
            requeteSql = cnx.prepareStatement("select s.id as s_id, s.libelle as s_libelle from sport s where s.id = ?");;
            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1, idSport);
            resultatRequete = requeteSql.executeQuery();
            
            if (resultatRequete.next()){
                
                   s.setId(resultatRequete.getInt("s_id"));
                   s.setLibelle(resultatRequete.getString("s_libelle"));
                
            }
           
        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesPompiers e généré une erreur");
        }
        return s;
    }
    
    public static ArrayList<Athlete> getAthletesBySport(Connection cnx, int idSport) {
        ArrayList<Athlete> lesAthletes = new ArrayList<Athlete>();
        try {
            requeteSql = cnx.prepareStatement("select a.id as a_id, a.nom as a_nom, a.prenom as a_prenom, a.datenaiss as a_datenaiss from athlete a inner join sport s on a.sport_id = s.id inner join pays p on a.pays_id = p.id where a.sport_id = ?");
            requeteSql.setInt(1, idSport);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()) {
                Athlete a = new Athlete();
                a.setId(resultatRequete.getInt("a_id"));
                a.setNom(resultatRequete.getString("a_nom"));
                a.setPrenom(resultatRequete.getString("a_prenom"));
                a.setDateNaiss(resultatRequete.getDate("a_datenaiss").toLocalDate());
                
                lesAthletes.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("La requête de getAthletesBySport a généré une erreur");
        }
        return lesAthletes;
    }
    
}
