package hibernate.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Hibernateutil {
	
	private static SessionFactory sf;
	
	public static SessionFactory getSessionFactory() {
		
		if(sf == null) {
			StandardServiceRegistry sr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
			Metadata md = new MetadataSources(sr).getMetadataBuilder().build();
			sf = md.getSessionFactoryBuilder().build();
		}
		
		return sf;
	}

}
