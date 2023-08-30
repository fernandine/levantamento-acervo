package com.levantamento.documental.acervo.DTOs;

public class BigChartDataDto {

    private String name;
    private Long data;

    public BigChartDataDto(String name, Long data) {
        this.name = name;
        this.data = data;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getData() {
        return data;
    }

    public void setData(Long data) {
        this.data = data;
    }
}
