package co.noblecobra.MySite.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.noblecobra.MySite.Entity.Writing;

public interface WritingRepository extends JpaRepository<Writing, Long> {

	List<Writing> findAllByOrderByCategory();
	
	List<Writing> findAllByOrderByTitle();
	
	List<Writing> findByCategory(String category);
	

}
