package com.levantamento.documental.acervo.services.exceptions;

@SuppressWarnings("serial")
public class ResourceNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public ResourceNotFoundException(String msg) {
		super(msg);
	}
}
