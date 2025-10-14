package com.group.swastik.base.controller;

import java.nio.charset.StandardCharsets;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriUtils;

import com.group.swastik.base.dto.RegisterForm;
import com.group.swastik.base.entities.User;
import com.group.swastik.base.services.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
public class AuthController {

    private static final Logger log = LoggerFactory.getLogger(AuthController.class);

    private final UserService userService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    // Show Register JSP
    @GetMapping("/register")
    public String showRegister(Model model) {
        if (!model.containsAttribute("registerForm")) {
            model.addAttribute("registerForm", new RegisterForm());
        }
        return "Register"; // /WEB-INF/views/register.jsp (adjust to your prefix/suffix)
    }

    // Handle Register POST
    @PostMapping("/register")
    public String doRegister(@Valid @ModelAttribute("registerForm") RegisterForm form,
                             BindingResult bindingResult,
                             RedirectAttributes ra) {

        if (bindingResult.hasErrors()) {
            // forward back to JSP with validation errors
            return "Register";
        }

        try {
            userService.register(form);
        } catch (IllegalArgumentException ex) {
            // duplicate email/mobile
            bindingResult.reject("registration.error", ex.getMessage());
            return "Register";
        } catch (Exception ex) {
            log.error("Registration failed", ex);
            bindingResult.reject("registration.error", "Something went wrong. Please try again.");
            return "Register";
        }

        ra.addFlashAttribute("msg", "Registration successful. Please login.");
        return "redirect:/login";
    }

    // Show Login JSP
    @GetMapping("/login")
    public String showLogin() {
        return "login"; // /WEB-INF/views/login.jsp
    }
    
    
    @PostMapping("/login")
    public String doLogin(
            @RequestParam String email,
            @RequestParam String password,
            HttpServletRequest request,
            RedirectAttributes ra) {

        Optional<User> userOpt = userService.authenticate(email.trim(), password);

        if (userOpt.isPresent()) {
            request.getSession(true).setAttribute("AUTH_USER", userOpt.get());
            ra.addFlashAttribute("msg", "Logged in successfully.");
            // change target if you have a dashboard
            return "redirect:/home";
        }

        // Back to login with message and keep the email pre-filled
        String e = UriUtils.encode(email, StandardCharsets.UTF_8);
        return "redirect:/login?error=Invalid%20email%20or%20password&email=" + e;
    }

    // Optional logout
    @PostMapping("/logout")
    public String logout(HttpServletRequest request, RedirectAttributes ra) {
        var session = request.getSession(false);
        if (session != null) session.invalidate();
        ra.addFlashAttribute("msg", "You’ve been logged out.");
        return "redirect:/login";
    }
}
