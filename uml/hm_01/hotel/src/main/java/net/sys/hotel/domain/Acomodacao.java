package net.sys.hotel.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="acomodacao")
public class Acomodacao {

	@Id
	@Column
	private Long id;
	
	@Column
	private String nome;

	@Column
	private String numeroQuarto;
	
	@Column
	private String capacidade;
	
	@Column
	private Integer numero;
	
	@Column
	private String estado;
	
	@Column
	private String descricao;

	 
 
	
	
}
