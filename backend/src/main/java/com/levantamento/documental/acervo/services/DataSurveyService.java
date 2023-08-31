package com.levantamento.documental.acervo.services;

import com.levantamento.documental.acervo.DTOs.DataSurveyDto;
import com.levantamento.documental.acervo.entities.DataSurvey;
import com.levantamento.documental.acervo.repositories.DataSurveyRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.stream.Collectors;


@Service
//@Validated
public class DataSurveyService {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private DataSurveyRepository repository;

    @Transactional(readOnly = true)
    public Page<DataSurveyDto> findAll(Pageable pageable) {
        Page<DataSurvey> dataSurveyPage = repository.findAll(pageable);
        List<DataSurveyDto> dtos = dataSurveyPage.getContent().stream()
                .map(dataSurvey -> modelMapper.map(dataSurvey, DataSurveyDto.class))
                .collect(Collectors.toList());
        return new PageImpl<>(dtos, pageable, dataSurveyPage.getTotalElements());
    }
}

