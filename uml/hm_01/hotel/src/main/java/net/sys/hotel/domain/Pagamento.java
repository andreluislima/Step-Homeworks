package net.sys.hotel.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="pagamento")
public class Pagamento {

	@Id
	@Column
	private Long id;
	
	 @Column
	private String tipoPagamento;
	 
	 @Column
	private Float valor;
	
 
	
	
}
