package com.levantamento.documental.acervo.DTOs;

import com.levantamento.documental.acervo.entities.Role;

public class RoleDto {

    private Long id;
    private String authority;

    public RoleDto() {
    }

    public RoleDto(Long id, String authority) {
        this.id = id;
        this.authority = authority;
    }
    public RoleDto(Role entity) {
        id = entity.getId();
        authority = entity.getAuthority();
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
