
package com.group.swastik.base.entities;

import java.time.LocalDateTime;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity

@Table(name = "users", uniqueConstraints = {

		@UniqueConstraint(columnNames = "email"),

		@UniqueConstraint(columnNames = "mobile") })
public class User {

	private static final Logger logger = LoggerFactory.getLogger(User.class);

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id")
	private Long id;

	@Column(name = "fullname", nullable = false, length = 100)
	private String fullname;

	@Column(name = "mobile", nullable = false, length = 15)
	private String mobile;

	@Column(name = "email", nullable = false, length = 120)
	private String email;

	@Column(name = "password", nullable = false, length = 255)
	private String password;

	@Column(name = "created_at", nullable = false)
	private LocalDateTime createdAt;

	@Column(name = "updated_at")
	private LocalDateTime updatedAt;

	// Default
	//constructor 
	public User() { logger.debug("User entity created"); }

	// Constructor for convenience 
	public User(String fullname, String mobile,
	String email, String password)
	{
		this.fullname = fullname;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
		this.createdAt = LocalDateTime.now();
	}

	@PrePersist
	protected void onCreate() {
		createdAt = LocalDateTime.now();
	}

	@PreUpdate
	protected void onUpdate() {
		updatedAt = LocalDateTime.now();
	}

	// Getters and setters 
	public Long getId() { return id; }

	public void setId(Long id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Override
	public String toString() {
		return "User{" + "id=" + id + ", fullname='" + fullname + '\'' + ", mobile='" + mobile + '\'' + ", email='"
				+ email + '\'' + ", createdAt=" + createdAt + '}';
	}
}
