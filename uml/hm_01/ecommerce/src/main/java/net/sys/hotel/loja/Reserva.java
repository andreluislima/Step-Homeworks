package net.sys.hotel.loja;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="reserva")
public class Reserva {

	@Id
	@Column
	private Long id;
	
	private Atendente atentendente;
	
	private Reserva reserva;
	
	private Hotel hotel;
	
	private Acomodacao acomodacao;
	
	@Column()
	private LocalDateTime dataCheckin;

	@Column()
	private LocalDateTime dataCheckout;
	
	private String status;
	 
 
	
	
}
