package com.levantamento.documental.acervo.services;

import com.levantamento.documental.acervo.DTOs.DataSurveyDto;
import com.levantamento.documental.acervo.entities.DataSurvey;
import com.levantamento.documental.acervo.entities.dashboard.Card;
import com.levantamento.documental.acervo.repositories.DataSurveyRepository;
import com.levantamento.documental.acervo.services.exceptions.DatabaseException;
import com.levantamento.documental.acervo.services.exceptions.ResourceNotFoundException;
import jakarta.persistence.Column;
import jakarta.persistence.EntityNotFoundException;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DataSurveyService {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private DataSurveyRepository repository;
    @Transactional(readOnly = true)
    public List<DataSurveyDto> findAll() {
        List<DataSurvey> list = repository.findAll();
        return list.stream()
                .map(product -> modelMapper.map(product, DataSurveyDto.class))
                .collect(Collectors.toList());
    }
    @Transactional(readOnly = true)
    public DataSurveyDto findById(Long id) {
        Optional<DataSurvey> obj = repository.findById(id);
        DataSurvey entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
        return modelMapper.map(entity, DataSurveyDto.class);
    }

    @Transactional
    public DataSurveyDto insert(DataSurveyDto dto) {
        DataSurvey entity = new DataSurvey();
        copyDtoToEntity(dto, entity);
        entity = repository.save(entity);
        return modelMapper.map(entity, DataSurveyDto.class);
    }

    @Transactional
    public DataSurveyDto update(Long id, DataSurveyDto dto) {
        try {
            DataSurvey entity = repository.getReferenceById(id);
            copyDtoToEntity(dto, entity);
            entity = repository.save(entity);
            return modelMapper.map(entity, DataSurveyDto.class);
        } catch (EntityNotFoundException e) {
            throw new ResourceNotFoundException("Id not found " + id);
        }
    }

    public void delete(Long id) {
        try {
            repository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
            throw new ResourceNotFoundException("Id not found " + id);
        } catch (DataIntegrityViolationException e) {
            throw new DatabaseException("Integrity violation");
        }
    }

    private void copyDtoToEntity(DataSurveyDto dto, DataSurvey entity) {

        entity.setId(dto.getId());
        entity.setName(dto.getName());
        entity.setArea(dto.getArea());
        entity.setDigitalQuantitative(dto.getDigitalQuantitative());
        entity.setDocumentaryStudy(dto.getDocumentaryStudy());
        entity.setLegalAnalysis(dto.getLegalAnalysis());
        entity.setSubmission(dto.getSubmission());
        entity.setPhysicalQuantitative(dto.getPhysicalQuantitative());

        dto.getDigitalDocument().setCurrentPhase(false);

    }
    private Boolean documentaryStudy;
    @Column(name = "legal_analysis")
    private Boolean legalAnalysis;
    @Column(name = "submission")
    private Boolean submission;
    @Transactional(readOnly = true)
    public Card calculateCardTotalsWithPercentages() {
        List<DataSurvey> list = repository.findAll();
        long documentaryStudy = list.size();
        long legalAnalysis = list.size();
        long submission = list.size();
        long trueQtyDocumentaryStudy = list.stream().filter(DataSurvey::getDocumentaryStudy).count();
        double percentageDocumentaryStudy = ((double) trueQtyDocumentaryStudy / documentaryStudy) * 100;

        long trueQtyLegalAnalysis = list.stream().filter(DataSurvey::getLegalAnalysis).count();
        double percentageLegalAnalysis = ((double) trueQtyLegalAnalysis / legalAnalysis) * 100;

        long trueQtySubmission = list.stream().filter(DataSurvey::getSubmission).count();
        double percentageSubmission = ((double) trueQtySubmission / submission) * 100;

        Card card = new Card();
        card.setId(card.getId());

        card.setQtyLegalAnalysis(legalAnalysis);
        card.setQtyDocumentaryStudy(documentaryStudy);
        card.setQtySubmission(submission);

        card.setPercentageDocumentaryStudy(percentageDocumentaryStudy);
        card.setPercentageLegalAnalysis(percentageLegalAnalysis);
        card.setPercentageSubmission(percentageSubmission);

        return card;
    }


}
