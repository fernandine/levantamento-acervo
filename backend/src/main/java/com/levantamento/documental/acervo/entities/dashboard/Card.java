package com.levantamento.documental.acervo.entities.dashboard;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tb_qty_card")
public class Card implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "qty_name")
    private Long qtyName;
    @Column(name = "qty_documentary_study")
    private Long qtyDocumentaryStudy;
    @Column(name = "qty_legal_analysis")
    private Long qtyLegalAnalysis;
    @Column(name = "qty_submission")
    private Long qtySubmission;
    private Double percentageDocumentaryStudy;
    private Double percentageSubmission;
    private Double percentageLegalAnalysis;

    public Card() {
    }

    public Card(Long id, Long qtyName, Long qtyDocumentaryStudy, Long qtyLegalAnalysis, Long qtySubmission,
                Double percentageDocumentaryStudy, Double percentageSubmission, Double percentageLegalAnalysis) {
        this.id = id;
        this.qtyName = qtyName;
        this.qtyDocumentaryStudy = qtyDocumentaryStudy;
        this.qtyLegalAnalysis = qtyLegalAnalysis;
        this.qtySubmission = qtySubmission;
        this.percentageDocumentaryStudy = percentageDocumentaryStudy;
        this.percentageSubmission = percentageSubmission;
        this.percentageLegalAnalysis = percentageLegalAnalysis;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getQtyName() {
        return qtyName;
    }

    public void setQtyName(Long qtyName) {
        this.qtyName = qtyName;
    }

    public Long getQtyDocumentaryStudy() {
        return qtyDocumentaryStudy;
    }

    public void setQtyDocumentaryStudy(Long qtyDocumentaryStudy) {
        this.qtyDocumentaryStudy = qtyDocumentaryStudy;
    }

    public Long getQtyLegalAnalysis() {
        return qtyLegalAnalysis;
    }

    public void setQtyLegalAnalysis(Long qtyLegalAnalysis) {
        this.qtyLegalAnalysis = qtyLegalAnalysis;
    }

    public Long getQtySubmission() {
        return qtySubmission;
    }

    public void setQtySubmission(Long qtySubmission) {
        this.qtySubmission = qtySubmission;
    }

    public Double getPercentageDocumentaryStudy() {
        return percentageDocumentaryStudy;
    }

    public void setPercentageDocumentaryStudy(Double percentageDocumentaryStudy) {
        this.percentageDocumentaryStudy = percentageDocumentaryStudy;
    }

    public Double getPercentageSubmission() {
        return percentageSubmission;
    }

    public void setPercentageSubmission(Double percentageSubmission) {
        this.percentageSubmission = percentageSubmission;
    }

    public Double getPercentageLegalAnalysis() {
        return percentageLegalAnalysis;
    }

    public void setPercentageLegalAnalysis(Double percentageLegalAnalysis) {
        this.percentageLegalAnalysis = percentageLegalAnalysis;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Card card)) return false;
        return Objects.equals(id, card.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
