package com.levantamento.documental.acervo.controllers;

import com.levantamento.documental.acervo.DTOs.EmailDto;
import com.levantamento.documental.acervo.DTOs.NewPasswordDto;
import com.levantamento.documental.acervo.services.AuthService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/auth")
public class AuthController {

    @Autowired
    private AuthService authService;


    @PostMapping(value = "/recover-token")
    public ResponseEntity<Void> createRecoverToken(@Valid @RequestBody EmailDto dto) {
        authService.createRecoverToken(dto);
        return ResponseEntity.noContent().build();
    }

    @PutMapping(value = "/new-password")
    public ResponseEntity<Void> saveNewPassword(@Valid @RequestBody NewPasswordDto dto) {
        authService.saveNewPassword(dto);
        return ResponseEntity.noContent().build();
    }
}
