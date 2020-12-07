package com.team1.welshrowing.web;

import com.cemiltokatli.passwordgenerate.Password;
import com.cemiltokatli.passwordgenerate.PasswordType;
import com.team1.welshrowing.domain.Applicant;
import com.team1.welshrowing.domain.User;
import com.team1.welshrowing.repository.ApplicantRepoJPA;
import com.team1.welshrowing.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpServletRequest;
import java.util.MissingResourceException;
import java.util.Optional;

import static org.springframework.http.HttpStatus.NOT_FOUND;

@Controller
public class CoachController {

    @Autowired
    private UserCreateService userCreateService;

    @Autowired
    private ApplicantReadService applicantReadService;

    @Autowired
    private ApplicantEmailService applicantEmailService;

    @Autowired
    private UserReadService userReadService;
    
    @Autowired
    public ApplicantRepoJPA applicantRepo;

    @Autowired
    private ApplicantUpdateService applicantUpdateService;

    /**
     * GETs the coach dashboard
     */
    @GetMapping("/coach/dashboard")
    public String coachDashboard() {
        return "coach/dashboard";
    }

    /**
     * GETs an applicant by their ID
     * @param id - the ID of the applicant
     * @param model - the Model object
     * @return - the view-details template
     */
    @GetMapping(path = "/coach/applicant/{id}")
    public String getApplicantDetails(@PathVariable Long id, Model model) {

        Optional<Applicant> applicant = applicantReadService.findById(id);

        if (applicant.isPresent()) {
            model.addAttribute("applicant", applicant.get());
            model.addAttribute("user", applicant.get().getUser());
            return "coach/view-details";
        } else {
            throw new ResponseStatusException(NOT_FOUND, "Applicant not found");
        }

    }

    /**
     * GETs the add coach form.
     */
    @GetMapping("/coach/add-coach")
    public String getAddCoach(Model model) {
        model.addAttribute("user", new User());
        return "coach/add-coach";
    }

    @PostMapping("/coach/add-coach")
    public String postAddCoach(Model model, User user) {

        // Generate a random password
        Password pass = Password.createPassword();
        pass.setType(PasswordType.ALPHANUMERIC);
        pass.setMinLength(8);
        pass.setMaxLength(10);
        String password = pass.generate();

        // Add to the model for display purposes
        model.addAttribute("password", password);

        user.setPassword(password);
        user.setRoles("COACH");

        userCreateService.addUser(user);
        return "coach/add-coach";
    }
    
    @GetMapping("/allApplicants")
    public String getApplicant(Model model){

        model.addAttribute("applicants", applicantRepo.findAll());
        System.out.println(applicantRepo.findAll());
        return "applicantList";
    }

    @PostMapping("coach/applicant/accept/{id}")
    public String AcceptAnApplicant(@PathVariable Long id, Model model) {


        Optional<Applicant> applicant = applicantReadService.findById(id);



        if (applicant.isPresent()) {

            model.addAttribute("applicant", applicant.get());
            model.addAttribute("user", applicant.get().getUser().getEmail());

            applicantUpdateService.updateApplicantStatus(applicant.get(), "Accepted");
            applicantEmailService.sendApplicantEmailStatus(applicant.get());

            return "redirect:/allApplicants";
        } else {

            throw new ResponseStatusException(NOT_FOUND, "Applicant not found");
        }
    }

    @PostMapping("/coach/applicant/reject/{id}")
    public String RejectAnApplicant(@PathVariable Long id,Model model) {

        Optional<Applicant> applicant = applicantReadService.findById(id);

        if (applicant.isPresent()) {

            model.addAttribute("applicant", applicant.get());
            model.addAttribute("user", applicant.get().getUser().getEmail());

            applicantUpdateService.updateApplicantStatus(applicant.get(), "Rejected");
            applicantEmailService.sendApplicantEmailStatus(applicant.get());

            return "redirect:/allApplicants";
        } else {

            throw new ResponseStatusException(NOT_FOUND, "Applicant not found");
        }
    }

}