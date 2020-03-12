package co.noblecobra.MySite.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.noblecobra.MySite.Entity.Quote;

public interface QuoteRepository extends JpaRepository<Quote, Long> {

	List<Quote> findBySubjectIgnoreCase(String s);
}
