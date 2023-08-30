package com.levantamento.documental.acervo.DTOs;

import java.util.List;

public record DataPageDto(List<DataSurveyDto> dataSurveyList, long totalElements, int totalPages) {
}
