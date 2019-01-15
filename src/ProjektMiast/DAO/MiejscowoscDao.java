/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProjektMiast.DAO;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import klasy.Miejscowosc;
import klasy.MiejscowoscSave;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 *
 * @author darma
 */
public class MiejscowoscDao {

    public ObservableList<Miejscowosc> pobierzMiejscowości() {
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = getSessionFactory();
        ObservableList<Miejscowosc> results = FXCollections.observableArrayList();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            Criteria cr = session.createCriteria(Miejscowosc.class);
            //cr.add(Restrictions.eq("qualification", "yes"));
            results.addAll(cr.list());
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
        return results;
    }

    public void dodajMiejscowosc(Miejscowosc miejscowosc) {

        Miejscowosc m = new Miejscowosc();
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = getSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            session.save(miejscowosc);
            session.flush();
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
    }

    public void usunMiejscowosc(Long miejscowoscId) {

        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = getSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            String hql = "delete " + Miejscowosc.class.getName() + " where id = :id";
            Query q = session.createQuery(hql).setParameter("id", miejscowoscId);
            q.executeUpdate();
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
    }

    public Miejscowosc aktualizujMiejscowosc(Miejscowosc miejscowosc) {
        Miejscowosc m = new Miejscowosc();
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = getSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            m = (Miejscowosc) session.merge(miejscowosc);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
        return m;
    }

    public Long dodajMiejscowosc(MiejscowoscSave miejscowosc) {
        Long nowaMiejscowoscId = null;
        Session session = null;
        Transaction tx = null;
        SessionFactory sessionFactory = getSessionFactory();

        try {
            session = sessionFactory.openSession();
            tx = session.beginTransaction();
            nowaMiejscowoscId = (Long) session.save(miejscowosc);
            session.flush();
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
        return nowaMiejscowoscId;
    }

    private SessionFactory getSessionFactory() {
        Configuration cfg = new Configuration().configure();
        cfg.setProperty("hibernate.show_sql", "true");
        cfg.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
        SessionFactory sessions = cfg.buildSessionFactory();
        return sessions;
    }
}
