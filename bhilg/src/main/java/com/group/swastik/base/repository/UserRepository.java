
package com.group.swastik.base.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group.swastik.base.entities.User;

public interface UserRepository extends JpaRepository<User, Long> { //
	Optional<User> findByEmail(String email); //
	Optional<User>findByMobile(String mobile);
	
	 boolean existsByEmail(String email); //

	boolean existsByMobile(String mobile);
	List<User> findAllByOrderByCreatedAtDesc();

}
