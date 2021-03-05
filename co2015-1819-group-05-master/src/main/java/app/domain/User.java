package app.domain;

import app.domain.Role;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import java.util.Set;

@Entity(name="registeredUsers")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(nullable = false, unique = true)
	private String email;

	private String password;

	@Transient
	private String password2;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Role usersRole;

	@OneToMany(mappedBy="user", cascade=CascadeType.ALL)
	private Set<Timeslot> timeslots;
	
	@Column
	private int lunchsetting;
	
	public User() {}

	public void setEmail(String email) {
	this.email = email;
	}

	public String getEmail() {
	return email;
	}

	public void setPassword(String password) {
	this.password = password;
	}

	public String getPassword() {
	return password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public Role getUsersRole() {
		return usersRole;
	}

	public void setUsersRole(Role usersRole) {
		this.usersRole = usersRole;
	}
	
	public int getLunchsetting() {
		return lunchsetting;
	}
	
	public void setLunchsetting(int lunchtime) {
		this.lunchsetting = lunchtime;
	}
	
}
