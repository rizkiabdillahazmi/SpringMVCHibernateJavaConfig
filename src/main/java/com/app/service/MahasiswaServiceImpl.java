package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.MahasiswaDAO;
import com.app.model.Mahasiswa;

@Service
//@Transactional
public class MahasiswaServiceImpl implements MahasiswaService{

	@Autowired
    private MahasiswaDAO mahasiswaDAO;
	
	@Override
	@Transactional
	public void addMhs(Mahasiswa mahasiswa) {
		mahasiswaDAO.addMhs(mahasiswa);
	}

	@Override
	@Transactional
	public List<Mahasiswa> getAllMhs() {
		return mahasiswaDAO.getAllMhs();
	}

	@Override
	@Transactional
	public void deleteMhs(Integer mhsId) {
		mahasiswaDAO.deleteMhs(mhsId);
	}

	public Mahasiswa updateMhs(Mahasiswa mahasiswa) {
		return mahasiswaDAO.updateMhs(mahasiswa);
	}

	public Mahasiswa getMhs(int mhsId) {
		return mahasiswaDAO.getMhs(mhsId);
	}

	public void setMahasiswaDAO(MahasiswaDAO mahasiswaDAO) {
        this.mahasiswaDAO = mahasiswaDAO;
    }
}
