package co.noblecobra.MySite.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import co.noblecobra.MySite.Entity.Coding;

public interface CodingRepository extends JpaRepository<Coding, Long> {

}
