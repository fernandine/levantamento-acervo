package com.levantamento.documental.acervo.controllers;

import com.levantamento.documental.acervo.DTOs.DataSurveyDto;
import com.levantamento.documental.acervo.services.DataSurveyService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/documents")
public class DataSurveyController {

    @Autowired
    private DataSurveyService service;

    @Autowired
    private ModelMapper modelMapper;

    @GetMapping
    public ResponseEntity<Page<DataSurveyDto>> findAll(Pageable pageable) {
        Page<DataSurveyDto> list = service.findAll(pageable);
        return ResponseEntity.ok().body(list);
    }
}
