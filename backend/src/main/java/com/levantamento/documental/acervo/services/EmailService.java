package com.levantamento.documental.acervo.services;

import com.levantamento.documental.acervo.services.exceptions.EmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Value("${spring.mail.username}")
    private String emailFrom;

    @Autowired
    private JavaMailSender emailSender;

    public void sendEmail(String to, String subject, String body) {
        try{
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom(emailFrom);
            message.setTo(to);
            message.setSubject(subject);
            message.setText(body);
            emailSender.send(message);
        }
        catch (MailException e){
            throw new EmailException("Failed to send email");
        }
    }
}
