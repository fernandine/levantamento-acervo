package com.levantamento.documental.acervo.DTOs;

import com.levantamento.documental.acervo.entities.DigitalDocument;
import com.levantamento.documental.acervo.entities.PhysicalDocument;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.OneToOne;

import java.io.Serializable;

public class DataSurveyDto implements Serializable {

    private Long id;
    private String name;
    private String area;
    private Boolean documentaryStudy;
    private Boolean legalAnalysis;
    private Boolean submission;
    private Long digitalQuantitative;
    private Long physicalQuantitative;

    private DigitalDocumentDto digitalDocument;

    private PhysicalDocumentDto physicalDocument;
    public DataSurveyDto() {
    }

    public DataSurveyDto(Long id, String name, String area, Boolean documentaryStudy, Boolean legalAnalysis,
                         Boolean submission, Long digitalQuantitative, Long physicalQuantitative,
                         DigitalDocumentDto digitalDocument, PhysicalDocumentDto physicalDocument) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.documentaryStudy = documentaryStudy;
        this.legalAnalysis = legalAnalysis;
        this.submission = submission;
        this.digitalQuantitative = digitalQuantitative;
        this.physicalQuantitative = physicalQuantitative;
        this.digitalDocument = digitalDocument;
        this.physicalDocument = physicalDocument;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Boolean getDocumentaryStudy() {
        return documentaryStudy;
    }

    public void setDocumentaryStudy(Boolean documentaryStudy) {
        this.documentaryStudy = documentaryStudy;
    }

    public Boolean getLegalAnalysis() {
        return legalAnalysis;
    }

    public void setLegalAnalysis(Boolean legalAnalysis) {
        this.legalAnalysis = legalAnalysis;
    }

    public Boolean getSubmission() {
        return submission;
    }

    public void setSubmission(Boolean submission) {
        this.submission = submission;
    }

    public Long getDigitalQuantitative() {
        return digitalQuantitative;
    }

    public void setDigitalQuantitative(Long digitalQuantitative) {
        this.digitalQuantitative = digitalQuantitative;
    }

    public Long getPhysicalQuantitative() {
        return physicalQuantitative;
    }

    public void setPhysicalQuantitative(Long physicalQuantitative) {
        this.physicalQuantitative = physicalQuantitative;
    }

    public DigitalDocumentDto getDigitalDocument() {
        return digitalDocument;
    }

    public void setDigitalDocument(DigitalDocumentDto digitalDocument) {
        this.digitalDocument = digitalDocument;
    }

    public PhysicalDocumentDto getPhysicalDocument() {
        return physicalDocument;
    }

    public void setPhysicalDocument(PhysicalDocumentDto physicalDocument) {
        this.physicalDocument = physicalDocument;
    }
}
