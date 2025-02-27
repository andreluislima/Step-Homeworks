package net.sys.hotel.domain;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="reserva")
public class Agendamento {

	@Id
	@Column
	private Long id;
	
	private Atendente atendente;
	
	private Agendamento reserva;
	
	private Hotel hotel;
	
	private Acomodacao acomodacao;
	
	@Column
	private LocalDateTime dataCheckin;

	@Column
	private LocalDateTime dataCheckout;
	
	private String status;
	 
 
	
	
}
