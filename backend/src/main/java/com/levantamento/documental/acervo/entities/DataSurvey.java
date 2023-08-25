package com.levantamento.documental.acervo.entities;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tb_data_survey")
public class DataSurvey implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String area;
    @Column(name = "documentary_study")
    private Boolean documentaryStudy;
    @Column(name = "legal_analysis")
    private Boolean legalAnalysis;
    @Column(name = "submission")
    private Boolean submission;
    @Column(name = "digital_quantitative")
    private Long digitalQuantitative;
    @Column(name = "physical_quantitative")
    private Long physicalQuantitative;

    @OneToOne(mappedBy = "dataSurvey", cascade = CascadeType.ALL)
    private DigitalDocument digitalDocument;

    @OneToOne(mappedBy = "dataSurvey", cascade = CascadeType.ALL)
    private PhysicalDocument physicalDocument;

    public DataSurvey() {
    }


    public DataSurvey(Long id, String name, String area, Boolean documentaryStudy, Boolean legalAnalysis,
                      Boolean submission, Long digitalQuantitative, Long physicalQuantitative,
                      DigitalDocument digitalDocument, PhysicalDocument physicalDocument) {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DataSurvey that)) return false;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
