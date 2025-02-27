package net.sys.hotel.loja;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="atendente")
public class Atendente {

	@Id
	@Column
	private Long id;
	
	private Cargo cargo;
	
	@Column
	private String nome;

	@Column
	private String descricao;

	 
 
	
	
}
