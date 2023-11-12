package com.example.termsandconditions.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConfirmationController {

    @GetMapping("/confirmation")
    public String showConfirmationPage(@RequestParam(required = false) String error,
            @RequestParam(required = false) String message, Model model) {
        if (error != null) {
            model.addAttribute("error", error);
        } else if (message != null) {
            model.addAttribute("message", message);
        }
        return "confirmationPage";
    }
}

