package com.levantamento.documental.acervo.DTOs;

public class PieChartDataDto {

    private String name;
    private double y;
    private Boolean sliced;
    private Boolean selected;

    public PieChartDataDto(String name, double y, Boolean sliced, Boolean selected) {
        this.name = name;
        this.y = y;
        this.sliced = sliced;
        this.selected = selected;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public Boolean getSliced() {
        return sliced;
    }

    public void setSliced(Boolean sliced) {
        this.sliced = sliced;
    }

    public Boolean getSelected() {
        return selected;
    }

    public void setSelected(Boolean selected) {
        this.selected = selected;
    }
}
