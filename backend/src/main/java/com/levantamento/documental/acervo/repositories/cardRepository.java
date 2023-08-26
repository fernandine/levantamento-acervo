package com.levantamento.documental.acervo.repositories;

import com.levantamento.documental.acervo.entities.DataSurvey;
import org.springframework.data.jpa.repository.JpaRepository;

public interface cardRepository extends JpaRepository<DataSurvey, Long> {
}

