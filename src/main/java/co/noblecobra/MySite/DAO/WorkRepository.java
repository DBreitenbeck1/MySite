package co.noblecobra.MySite.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.noblecobra.MySite.Entity.Work;

public interface WorkRepository extends JpaRepository<Work, Long> {

	List<Work> findByMedium(String medium);
	
	
}
