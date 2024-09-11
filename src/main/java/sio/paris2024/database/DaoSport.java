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
    
}
