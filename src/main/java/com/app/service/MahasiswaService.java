package com.app.service;

import java.util.List;

import com.app.model.Mahasiswa;

public interface MahasiswaService {
	public void addMhs(Mahasiswa mahasiswa);
    public List<Mahasiswa> getAllMhs();
    public void deleteMhs(Integer mhsId);
    public Mahasiswa updateMhs(Mahasiswa mahasiswa);
    public Mahasiswa getMhs(int mhsId);
}
