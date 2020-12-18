package co.noblecobra.MySite.DAO;

import java.util.*;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional

public class WorkDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public Set<String> mediums(){
		List<String> mediums = em.createQuery("SELECT DISTINCT medium FROM Work",
				String.class).getResultList();
		return new TreeSet<>(mediums);
				
	} 
	
	

}
