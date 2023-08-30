package com.levantamento.documental.acervo.DTOs;

import java.io.Serializable;

public class PhysicalDocumentDto implements Serializable {

    private Long id;
    private Boolean intermediatePhase;
    private Boolean finalDestination;

    public PhysicalDocumentDto() {
    }

    public PhysicalDocumentDto(Long id, Boolean intermediatePhase,
                               Boolean finalDestination
                               ) {
        this.id = id;
        this.intermediatePhase = intermediatePhase;
        this.finalDestination = finalDestination;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
