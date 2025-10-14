package com.group.swastik.base.serviceImpl;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group.swastik.base.dto.RegisterForm;
import com.group.swastik.base.entities.User;
import com.group.swastik.base.repository.UserRepository;
import com.group.swastik.base.services.UserService;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }
    
    private boolean passwordMatches(String raw, String stored) {
        if (stored == null) return false;
        if (passwordEncoder != null) {
            // BCrypt (recommended)
            return passwordEncoder.matches(raw, stored);
        }
        // Fallback: plain-text compare (NOT recommended)
        return stored.equals(raw);
    }

    @Override
    public boolean emailTaken(String email) {
        return userRepository.existsByEmail(email);
    }

    @Override
    public boolean mobileTaken(String mobile) {
        return userRepository.existsByMobile(mobile);
    }

    @Override
    @Transactional
    public User register(RegisterForm form) {
        if (emailTaken(form.getEmail())) {
            throw new IllegalArgumentException("Email already registered");
        }
        if (mobileTaken(form.getMobile())) {
            throw new IllegalArgumentException("Mobile already registered");
        }

        User u = new User();
        u.setFullname(form.getFullname());
        u.setMobile(form.getMobile());
        u.setEmail(form.getEmail());
        u.setPassword(passwordEncoder.encode(form.getPassword())); // hash

        User saved = userRepository.save(u);
        log.info("Registered new user id={} email={}", saved.getId(), saved.getEmail());
        return saved;
    }

    @Override
    public Optional<User> authenticate(String email, String rawPassword) {
   Optional<User> use= 	userRepository.findByEmail(email);
    	
        return userRepository.findByEmail(email)
            .filter(u -> passwordMatches(rawPassword, u.getPassword()));
    }

	  @Override
	    public Optional<User> findByEmail(String email) {
	        return userRepository.findByEmail(email);
	    }
}
