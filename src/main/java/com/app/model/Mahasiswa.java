package com.app.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "mahasiswa")
public class Mahasiswa {
	@Id
	@Column(name = "mhs_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;

	@Column(name = "mhs_nim")
	private String nim;

	@Column(name = "mhs_nama")
	private String nama;

	@Column(name = "mhs_jk")
	private String jk;

	@Column(name = "mhs_alamat")
	private String alamat;

	@ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	@JoinTable(name = "prodi_member", joinColumns = { @JoinColumn(name = "mhs_id") }, inverseJoinColumns = {
			@JoinColumn(name = "pr_id") })
	private Set<Prodi> prodi;

	// @ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	// @JoinTable(name = "prodi_member", joinColumns = { @JoinColumn(name = "mhs_id"),
	// 		@JoinColumn(name = "pr_id") }, inverseJoinColumns = {
	// 				@JoinColumn(name = "pr_id"),
	// 				@JoinColumn(name = "fk_id") })
	// private Set<Fakultas> fakultas;

	// @ManyToMany
	// @JoinColumn(name="mhs_id")
	// private Long mhsProdi;
}
