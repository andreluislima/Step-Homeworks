package net.sys.hotel.loja;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="hotel")
public class Cargo {

	@Id
	@Column
	private Long id;
	
	@Column
	private String nome;

	 
	
	
}
