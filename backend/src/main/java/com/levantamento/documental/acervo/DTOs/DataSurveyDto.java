package com.levantamento.documental.acervo.DTOs;

import com.levantamento.documental.acervo.entities.DataSurvey;
import com.levantamento.documental.acervo.entities.DigitalDocument;
import com.levantamento.documental.acervo.entities.PhysicalDocument;

import java.io.Serializable;

public class DataSurveyDto implements Serializable {

    private Long id;
    private String name;
    private String area;
    private Boolean documentaryStudy;
    private Boolean classification;
    private Boolean legalAnalysis;
    private Boolean auxiliaryDocument;
    private Boolean ged;
    private Boolean submission;
    private Long digitalQuantitative;
    private Long physicalQuantitative;
    private Long microfilmQuantitative;
    private DigitalDocument digitalDocument;
    private PhysicalDocument physicalDocument;
    public DataSurveyDto() {
    }

    public DataSurveyDto(Long id, String name, String area, Boolean documentaryStudy, Boolean classification,
                         Boolean legalAnalysis, Boolean auxiliaryDocument, Boolean ged, Boolean submission,
                         Long digitalQuantitative, Long physicalQuantitative, Long microfilmQuantitative,
                         DigitalDocument digitalDocument, PhysicalDocument physicalDocument) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.documentaryStudy = documentaryStudy;
        this.classification = classification;
        this.legalAnalysis = legalAnalysis;
        this.auxiliaryDocument = auxiliaryDocument;
        this.ged = ged;
        this.submission = submission;
        this.digitalQuantitative = digitalQuantitative;
        this.physicalQuantitative = physicalQuantitative;
        this.microfilmQuantitative = microfilmQuantitative;
        this.digitalDocument = digitalDocument;
        this.physicalDocument = physicalDocument;
    }

    public DataSurveyDto(DataSurvey entity) {
        this.id = entity.getId();
        this.name = entity.getName();
        this.area = entity.getArea();
        this.documentaryStudy = entity.getDocumentaryStudy();
        this.classification = entity.getClassification();
        this.legalAnalysis = entity.getLegalAnalysis();
        this.auxiliaryDocument = entity.getAuxiliaryDocument();
        this.ged = entity.getGed();
        this.submission = entity.getSubmission();
        this.digitalQuantitative = entity.getDigitalQuantitative();
        this.physicalQuantitative = entity.getPhysicalQuantitative();
        this.microfilmQuantitative = entity.getMicrofilmQuantitative();
        this.digitalDocument = entity.getDigitalDocument();
        this.physicalDocument = entity.getPhysicalDocument();

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

    public Boolean getClassification() {
        return classification;
    }

    public void setClassification(Boolean classification) {
        this.classification = classification;
    }

    public Boolean getAuxiliaryDocument() {
        return auxiliaryDocument;
    }

    public void setAuxiliaryDocument(Boolean auxiliaryDocument) {
        this.auxiliaryDocument = auxiliaryDocument;
    }

    public Boolean getGed() {
        return ged;
    }

    public void setGed(Boolean ged) {
        this.ged = ged;
    }

    public Long getMicrofilmQuantitative() {
        return microfilmQuantitative;
    }

    public void setMicrofilmQuantitative(Long microfilmQuantitative) {
        this.microfilmQuantitative = microfilmQuantitative;
    }

    public DigitalDocument getDigitalDocument() {
        return digitalDocument;
    }

    public void setDigitalDocument(DigitalDocument digitalDocument) {
        this.digitalDocument = digitalDocument;
    }

    public PhysicalDocument getPhysicalDocument() {
        return physicalDocument;
    }

    public void setPhysicalDocument(PhysicalDocument physicalDocument) {
        this.physicalDocument = physicalDocument;
    }
}
