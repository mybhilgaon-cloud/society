package com.group.swastik.base.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group.swastik.base.dto.RegisterForm;
import com.group.swastik.base.entities.User;
import com.group.swastik.base.services.UserService;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;

@Controller
public class AuthController {

    private static final Logger log = LoggerFactory.getLogger(AuthController.class);

    @Autowired
    private  UserService userService;

	/*
	 * public AuthController(UserService userService) { this.userService =
	 * userService; }
	 */
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
    public ModelAndView doRegister(
            @Valid @ModelAttribute("registerForm") RegisterForm form,
            BindingResult bindingResult,
            RedirectAttributes ra) {

        ModelAndView mv = new ModelAndView();
        log.info("REGISTER POST HIT");
        // Validation errors
        if (bindingResult.hasErrors()) {
            mv.setViewName("Register");
            return mv;
        }

        try {

            userService.register(form);

            // Success message
            mv.addObject(
                    "success",
                    "Registration completed successfully.");

            // Clear form after successful registration
            mv.addObject(
                    "registerForm",
                    new RegisterForm());

            mv.setViewName("Register");

            return mv;

        } catch (IllegalArgumentException ex) {

            bindingResult.reject(
                    "registration.error",
                    ex.getMessage());

            mv.setViewName("Register");

            return mv;

        } catch (Exception ex) {

            log.error("Registration failed", ex);

            bindingResult.reject(
                    "registration.error",
                    "Something went wrong. Please try again.");

            mv.setViewName("Register");

            return mv;
        }
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

       // Optional<User> userOpt = null;
        		//userService.authenticate(email.trim(), password);

       // if (userOpt.isPresent()) {
           // request.getSession(true).setAttribute("AUTH_USER", userOpt.get());
          //  ra.addFlashAttribute("msg", "Logged in successfully.");
            // change target if you have a dashboard
            return "redirect:/home";
      //  }

        // Back to login with message and keep the email pre-filled
       // String e = UriUtils.encode(email, StandardCharsets.UTF_8);
      //  return "redirect:/login?error=Invalid%20email%20or%20password&email=" + e;
    }

    @GetMapping("/reports/users")
    public String userReport(Model model) {

        List<User> users = userService.getAllUsers();

        model.addAttribute("users", users);

        return "UserReport";
    }
    
    
    @GetMapping("/reports/users/pdf")
    public void downloadPdf(HttpServletResponse response) throws Exception {

        List<User> users = userService.getAllUsers();

        response.setContentType("application/pdf");
        response.setHeader(
                "Content-Disposition",
                "attachment; filename=users-report.pdf");

        Document document = new Document();

        PdfWriter.getInstance(
                document,
                response.getOutputStream());

        document.open();

        document.add(new Paragraph("Registered Users Report"));

        PdfPTable table = new PdfPTable(3);

        table.addCell("Full Name");
        table.addCell("Email");
        table.addCell("Mobile");

        for (User user : users) {

            table.addCell(user.getFullname());
            table.addCell(user.getEmail());
            table.addCell(user.getMobile());
        }

        document.add(table);

        document.close();
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
