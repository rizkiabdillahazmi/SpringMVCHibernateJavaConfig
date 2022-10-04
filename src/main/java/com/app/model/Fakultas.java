package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "fakultas")
public class Fakultas {
	@Id
	@Column(name = "fk_id")
	@GeneratedValue
	private Long id;

	@Column(name = "fk_kode")
	private String kode;

	@Column(name = "fk_nama")
	private String nama;

	@Column(name = "fk_dekan")
	private String dekan;
}
