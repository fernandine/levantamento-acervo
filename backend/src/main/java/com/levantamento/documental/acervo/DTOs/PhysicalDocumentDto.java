package com.levantamento.documental.acervo.DTOs;

import java.io.Serializable;

public class PhysicalDocumentDto implements Serializable {

    private Long id;
    private Boolean currentPhase;
    private Boolean intermediatePhase;
    private Boolean finalDestination;

    public PhysicalDocumentDto() {
    }

    public PhysicalDocumentDto(Long id, Boolean currentPhase, Boolean intermediatePhase,
                               Boolean finalDestination
                               ) {
        this.id = id;
        this.currentPhase = currentPhase;
        this.intermediatePhase = intermediatePhase;
        this.finalDestination = finalDestination;
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

}
