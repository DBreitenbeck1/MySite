package co.noblecobra.MySite.DAO;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional

public class WritingDao {
	
	
	@PersistenceContext
	private EntityManager em;

	
	public Set<String> categories() {
		
		List<String> categories = em.createQuery("SELECT DISTINCT category FROM Writing", 
				String.class).getResultList(); 						
		return new TreeSet<>(categories);
	}


}
