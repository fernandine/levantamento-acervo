package com.levantamento.documental.acervo.repositories;

import com.levantamento.documental.acervo.entities.DigitalDocument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DigitalDocumentRepository extends JpaRepository<DigitalDocument, Long> {
}
