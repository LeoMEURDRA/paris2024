/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sio.paris2024.database;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author zakina
 */
public class InitConnexion  implements ServletContextListener {
    
     Connection cnx = null;
    
    public void contextInitialized(ServletContextEvent event)
    {     
        //Initialisation et lecture du  contexte
        ServletContext servletContext=event.getServletContext();
        System.out.println("INITCONNEXION" + servletContext.getContextPath());
        try
        {
            //chargement du driver
            Class.forName("org.mariadb.jdbc.Driver");
            System.out.println("Pilote Mariadb JDBC chargé");
            
            try
            {
            //obtention de la connexion
            cnx = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/paris2024","root","");
            //sauvegarder la connexion dans le context
            servletContext.setAttribute("connection",cnx);
            System.out.println("Connexion opérationnelle" + "jdbc:mariadb://127.0.0.1:3306/paris2024");
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            System.out.println("Erreur lors de l’établissementde la connexion");
        }
        }
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
            System.out.println("Erreur lors du chargemement du pilote");
        }

        
    }

    //action qui permet de détruire le filtre
    public void contextDestroyed(ServletContextEvent event)
    {
        System.out.println("----------- Contexte détruit -----------");
        try
        {
            //fermeture
            System.out.println("Connexion fermée");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                cnx.close();
            }
            catch(Exception e)
            {
                System.out.println("Erreur lors de la fermeture d’une connexion ");
            }
        }
    }
    
}
