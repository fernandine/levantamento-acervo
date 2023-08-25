package com.levantamento.documental.acervo.DTOs;

public class FieldMessageDto {

    private String fieldName;
    private String message;

    public FieldMessageDto(String fieldName, String message) {
        this.fieldName = fieldName;
        this.message = message;
    }

    public String getFieldName() {
        return fieldName;
    }

    public String getMessage() {
        return message;
    }
}
