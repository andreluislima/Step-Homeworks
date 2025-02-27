package net.sys.hotel.domain;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="hotel")
public class Hotel {

	@Id
	@Column
	private Long id;
	
	@Column(name="nome_fantasia")
	private String nomeFantasia;
 
	@Column(name="razao_social")
	private String razaoSocial;
	
	@Column(name="quantidade_acomodacoes")
	private Integer quantidadeAcomodacoes;

 
	
 
	
	
}
