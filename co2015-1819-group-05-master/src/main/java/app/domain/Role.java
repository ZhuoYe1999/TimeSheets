package app.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="roles")
public class Role {
	
	@Id
	@Column(nullable=false)
	private String roleName;
	
	@OneToMany(mappedBy="usersRole", cascade=CascadeType.ALL)
	private Set<User> users;
	
	public Role() { }

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	

}
