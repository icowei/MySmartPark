/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.mysmartpark.hibernate;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author a
 */
public class ParkHelper {
    
    Session session = null;
    
    public ParkHelper(){
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();    
    }
    
    public List getParkLogByBerth(int berthID){
        
        List<ParkLog> logList = null;
        try{
            org.hibernate.Transaction tx = session.beginTransaction();
            Query q = session.createQuery("from ParkLog as parklog where parklog.berth =" + berthID);
            logList = (List<ParkLog>) q.list();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return logList;    
    }
}
