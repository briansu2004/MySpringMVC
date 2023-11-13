package com.example.termsandconditions.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/terms")
public class TermsController {

    @GetMapping
    public String showTermsPage() {
        return "termsPage";
    }

    @PostMapping("/confirm")
    public String confirmTerms(@RequestParam(name = "agree", defaultValue = "false") String agree,
            RedirectAttributes redirectAttributes) {
        boolean agreed = Boolean.parseBoolean(agree);

        if (agreed) {
            return "redirect:/confirmation?message=You are enrolled";
        } else {
            redirectAttributes.addFlashAttribute("error",
                    "You have to agree to the terms to continue.");
            return "redirect:/confirmation";
        }
    }

}
