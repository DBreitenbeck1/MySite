package co.noblecobra.MySite.DAO;

import java.util.*;

import org.springframework.data.jpa.repository.JpaRepository;

import co.noblecobra.MySite.Entity.Media;

public interface MediaRepository extends JpaRepository<Media,Long> {

	
}
