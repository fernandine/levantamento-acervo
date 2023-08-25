package com.levantamento.documental.acervo.services;

import com.levantamento.documental.acervo.DTOs.DataSurveyDto;
import com.levantamento.documental.acervo.DTOs.DigitalDocumentDto;
import com.levantamento.documental.acervo.entities.DataSurvey;
import com.levantamento.documental.acervo.entities.DigitalDocument;
import com.levantamento.documental.acervo.repositories.DataSurveyRepository;
import com.levantamento.documental.acervo.services.exceptions.DatabaseException;
import com.levantamento.documental.acervo.services.exceptions.ResourceNotFoundException;
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
}
