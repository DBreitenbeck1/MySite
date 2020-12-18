package co.noblecobra.MySite.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import co.noblecobra.MySite.Entity.User;

public interface UserRepository extends JpaRepository<User,Long> {

	User findByNameIgnoreCase(String n);
	
}
