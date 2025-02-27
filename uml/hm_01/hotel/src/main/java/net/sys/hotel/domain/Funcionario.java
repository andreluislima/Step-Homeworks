package net.sys.hotel.domain;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="funcionario")
public class Funcionario {

	@Id
	@Column
	private Long id;
	
	@Column
	private Cargo cargo; 	 

	@Column
	private Hotel hotel;
	
	@Column
	private String nome;
	
	@Column
	private LocalDate Nascimento;
	
	@Column
	private String cpf;
	
	@Column
	private String telefone;
	
	@Column
	private String email;
	
	@Column
	private String genero;

}
