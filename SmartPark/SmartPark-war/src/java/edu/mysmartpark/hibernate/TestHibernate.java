import edu.mysmartpark.hibernate.Berth;
import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import org.hibernate.cfg.Configuration;

public class TestHibernate {

 

    /**

     * @param args the command line arguments

     */

    public static void main(String[] args) {

        // TODO code application logic here

        Configuration config=new Configuration().configure();

        SessionFactory sessionFactory=config.buildSessionFactory();

        Berth berth=new Berth();

        berth.setBerthId(3);

        berth.setParkinglot("aaa");

        berth.setResFlag(123456);
        
        berth.setParkFlag(123456);

        Session session=sessionFactory.openSession();

        Transaction tx=session.beginTransaction();

        session.save(berth);

        tx.commit();

        session.close();

        sessionFactory.close();

    }

}