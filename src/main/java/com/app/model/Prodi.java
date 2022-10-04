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
@Table(name = "prodi")
public class Prodi {
	@Id
	@Column(name="pr_id")
	@GeneratedValue
	private Long id;
	
	@Column(name="fk_id")
	private Long fakultas;
	
	@Column(name="pr_kode")
	private String kode;
	
	@Column(name="pr_nama")
	private String nama;
	
	@Column(name="pr_kaprodi")
	private String kaprodi;
	
}
