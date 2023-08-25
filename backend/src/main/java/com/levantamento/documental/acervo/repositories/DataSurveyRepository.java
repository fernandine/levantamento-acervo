package com.levantamento.documental.acervo.repositories;

import com.levantamento.documental.acervo.entities.DataSurvey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DataSurveyRepository extends JpaRepository<DataSurvey, Long> {
}
