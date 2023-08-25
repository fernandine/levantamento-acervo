package com.levantamento.documental.acervo.DTOs;

import com.levantamento.documental.acervo.entities.User;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class UserDto implements Serializable {

    private Long id;
    @NotBlank(message = "Campo obrigatório")
    private String firstname;
    private String lastname;

    @Email(message = "Favor entrar com email válido")
    private String email;
    private Set<RoleDto> roles = new HashSet<>();


    public UserDto() {
    }

    public UserDto(Long id, String firstname, String lastname, String email) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
    }

    public UserDto(User entity) {
        id = entity.getId();
        firstname = entity.getFirstname();
        lastname = entity.getLastname();
        email = entity.getEmail();
        entity.getRoles().forEach(role -> this.roles.add(new RoleDto(role)));
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setRoles(Set<RoleDto> roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}