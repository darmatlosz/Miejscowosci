/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProjektMiast.DAO;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import klasy.Gmina;
import klasy.Miejscowosc;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author darma
 */
public class GminyDao {

    public ObservableList<Gmina> pobierzGminy() {
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        ObservableList<Gmina> results = FXCollections.observableArrayList();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            Criteria cr = session.createCriteria(Gmina.class);
            results.addAll(cr.list());
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
        return results;
    }

    public void dodajGmine(Gmina gmina) {
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            session.persist(gmina);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
    }

    public void aktualizujGmine(Gmina gmina) {
        Miejscowosc m = new Miejscowosc();
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            session.merge(gmina);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
    }

}
