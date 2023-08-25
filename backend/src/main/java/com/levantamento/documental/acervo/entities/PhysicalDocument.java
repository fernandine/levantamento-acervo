package com.levantamento.documental.acervo.entities;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "tb_physical_document")
public class PhysicalDocument {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "current_phase")
    private Boolean currentPhase;
    @Column(name = "intermediate_phase")
    private Boolean intermediatePhase;
    @Column(name = "final_destination")
    private Boolean finalDestination;

    @OneToOne
    @MapsId
    @JoinColumn(name = "data_survey_id")
    private DataSurvey dataSurvey;

    public PhysicalDocument() {
    }

    public PhysicalDocument(Long id, Boolean currentPhase, Boolean intermediatePhase, Boolean finalDestination,
                            DataSurvey dataSurvey) {
        this.id = id;
        this.currentPhase = currentPhase;
        this.intermediatePhase = intermediatePhase;
        this.finalDestination = finalDestination;
        this.dataSurvey = dataSurvey;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getCurrentPhase() {
        return currentPhase;
    }

    public void setCurrentPhase(Boolean currentPhase) {
        this.currentPhase = currentPhase;
    }

    public Boolean getIntermediatePhase() {
        return intermediatePhase;
    }

    public void setIntermediatePhase(Boolean intermediatePhase) {
        this.intermediatePhase = intermediatePhase;
    }

    public Boolean getFinalDestination() {
        return finalDestination;
    }

    public void setFinalDestination(Boolean finalDestination) {
        this.finalDestination = finalDestination;
    }


    public DataSurvey getDataSurvey() {
        return dataSurvey;
    }

    public void setDataSurvey(DataSurvey dataSurvey) {
        this.dataSurvey = dataSurvey;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PhysicalDocument that)) return false;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
