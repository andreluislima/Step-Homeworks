package net.sys.hotel.loja;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="hospede")
public class Hospede {

	@Id
	@Column
	private Long id;
	
	private Reserva reserva;
	
	private Hospede hospede;
	
	private Pagamento pagamento;

	@Column
	private LocalDateTime dataAgendamento;
	
	
}
