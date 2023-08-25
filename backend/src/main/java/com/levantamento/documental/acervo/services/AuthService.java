package com.levantamento.documental.acervo.services;

import com.levantamento.documental.acervo.DTOs.EmailDto;
import com.levantamento.documental.acervo.DTOs.NewPasswordDto;
import com.levantamento.documental.acervo.entities.PasswordRecover;
import com.levantamento.documental.acervo.entities.User;
import com.levantamento.documental.acervo.repositories.PassRecoverRepository;
import com.levantamento.documental.acervo.repositories.UserRepository;
import com.levantamento.documental.acervo.services.exceptions.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.util.List;
import java.util.UUID;

@Service
public class AuthService {

    @Value("${spring.mail.username}")
    private String defaultSender;

    @Value("${email.password-recover.uri}")
    private String recoverUri;

    @Value("${email.password-recover.token.minutes}")
    private Long tokenMinutes;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private PassRecoverRepository passwordRecoverRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EmailService emailService;

    @Transactional
    public void createRecoverToken(EmailDto body) {
        User user = userRepository.findByEmail(body.getEmail());
        if (user == null) {
            throw new ResourceNotFoundException("Email not found");
        }

        String token = UUID.randomUUID().toString();

        PasswordRecover entity = new PasswordRecover();
        entity.setToken(token);
        entity.setExpiration(Instant.now().plusSeconds(tokenMinutes * 60L));
        entity.setEmail(body.getEmail());
        passwordRecoverRepository.save(entity);

        String text = "Acesse o link para definir uma nova senha\n\n"
                + recoverUri + token + ". Validade de " + tokenMinutes + " minutos";

        emailService.sendEmail(body.getEmail(), "Recuperação de senha", text);
    }

    @Transactional
    public void saveNewPassword(NewPasswordDto body) {
        List<PasswordRecover> list = passwordRecoverRepository.searchValidTokens(body.getToken(), Instant.now());

        if (list.size() == 0) {
            throw new ResourceNotFoundException("Invalid token");
        }

        User user = userRepository.findByEmail(list.get(0).getEmail());
        user.setPassword(passwordEncoder.encode(body.getPassword()));
        userRepository.save(user);
    }

    protected User authenticated() {
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            Jwt jwtPrincipal = (Jwt) authentication.getPrincipal();
            String username = jwtPrincipal.getClaim("username");
            return userRepository.findByEmail(username);
        } catch (Exception e) {
            throw new UsernameNotFoundException("Invalid user");
        }
    }
}
