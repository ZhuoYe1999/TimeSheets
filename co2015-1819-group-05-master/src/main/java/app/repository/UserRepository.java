package app.repository;

import org.springframework.data.repository.CrudRepository;

import app.domain.User;

public interface UserRepository extends CrudRepository<User, String> {
	User findByEmail(String email);
}
