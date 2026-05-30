package com.group.swastik.base.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Only provides the PasswordEncoder bean. This does NOT enable Spring Security filters.
 * Add dependency: spring-security-crypto
 */
@Configuration
public class SecurityBeansConfig {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        // strength 10 is default; adjust if you want
        return new BCryptPasswordEncoder();
    }
    
    
}
