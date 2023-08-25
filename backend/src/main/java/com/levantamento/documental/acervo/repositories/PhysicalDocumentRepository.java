package com.levantamento.documental.acervo.repositories;

import com.levantamento.documental.acervo.entities.PhysicalDocument;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhysicalDocumentRepository extends JpaRepository<PhysicalDocument, Long> {
}
