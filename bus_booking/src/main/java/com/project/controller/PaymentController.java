package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.model.Payment;
import com.project.repository.PaymentRepository;

@Controller
public class PaymentController 
{
	@Autowired
	private PaymentRepository prepo;
	
	@GetMapping("/payment")
    public String showPaymentForm(Model model) {
        model.addAttribute("payment", new Payment());
        return "payment.jsp";
    }

    @PostMapping("/processPayment")
    public String processPayment(@ModelAttribute Payment payment, Model model) {
        prepo.save(payment);
        model.addAttribute("message", "Payment processed successfully!");
        return "paymentSuccess";
    }

}
