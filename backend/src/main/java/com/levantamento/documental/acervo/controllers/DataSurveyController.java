package com.levantamento.documental.acervo.controllers;

import com.levantamento.documental.acervo.DTOs.DataSurveyDto;
import com.levantamento.documental.acervo.services.DataSurveyService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/documents")
public class DataSurveyController {

    @Autowired
    private DataSurveyService service;

    @GetMapping
    public ResponseEntity<List<DataSurveyDto>> findAll() {
        List<DataSurveyDto> list = service.findAll();
        return ResponseEntity.ok().body(list);
    }

    //@PreAuthorize("hasAnyRole('ROLE_DENTIST', 'ROLE_ADMIN')")
    @GetMapping(value = "/{id}")
    public ResponseEntity<DataSurveyDto> findPatientById (@PathVariable Long id) {
        DataSurveyDto dto = service.findById(id);
        return ResponseEntity.ok().body(dto);
    }

    @PostMapping
    public ResponseEntity<DataSurveyDto> insert(@RequestBody @Valid DataSurveyDto dto) {
        DataSurveyDto newDto = service.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
                .buildAndExpand(newDto.getId()).toUri();
        return ResponseEntity.created(uri).body(newDto);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<DataSurveyDto> update(@PathVariable Long id, @RequestBody @Valid DataSurveyDto dto) {
        DataSurveyDto newDto = service.update(id, dto);
        return ResponseEntity.ok().body(newDto);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        service.delete(id);
        return ResponseEntity.noContent().build();
    }
}
