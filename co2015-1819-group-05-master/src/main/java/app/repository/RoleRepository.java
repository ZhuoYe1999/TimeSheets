package app.repository;

import org.springframework.data.repository.CrudRepository;

import app.domain.Role;

public interface RoleRepository extends CrudRepository<Role, String> {
Role findByRoleName(String roleName);
}
