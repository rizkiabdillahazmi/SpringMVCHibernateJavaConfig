package com.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "prodi_member")
public class ProdiMember implements Serializable{
	private static final long serialVersionUID = 971597682269050340L;

	@Id
	@Column(name="pr_id")
	private Long prodiId;
	
	@Id
	@Column(name="mhs_id")
	private Long mhsId;
	
//	private Mahasiswa mahasiswa;
//	private Prodi prodi;
	
//	@ManyToMany
//	@JoinColumn(name="mhs_id")
//	private long mhsId;
	
}
