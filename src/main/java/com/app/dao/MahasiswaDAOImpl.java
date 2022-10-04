package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.model.Mahasiswa;

@Repository
public class MahasiswaDAOImpl implements MahasiswaDAO{
	private static final Logger logger = LoggerFactory.getLogger(MahasiswaDAOImpl.class);

	@Autowired
    private SessionFactory sessionFactory;
    
	public void addMhs(Mahasiswa mahasiswa) {
		sessionFactory.getCurrentSession().saveOrUpdate(mahasiswa);
		logger.info("Mahasiswa updated successfully, Mahasiswa Details = "+mahasiswa);
	}

	@SuppressWarnings("unchecked")
	public List<Mahasiswa> getAllMhs() {
		return sessionFactory.getCurrentSession().createQuery("from Mahasiswa").list();
	}

	@Override
	public void deleteMhs(Integer mhsId) {
		Mahasiswa mahasiswa = (Mahasiswa) sessionFactory.getCurrentSession().load(Mahasiswa.class, mhsId);
        if (null != mahasiswa) {
            this.sessionFactory.getCurrentSession().delete(mahasiswa);
        }
	}

	@Override
	public Mahasiswa updateMhs(Mahasiswa mahasiswa) {
		sessionFactory.getCurrentSession().update(mahasiswa);
        return mahasiswa;
	}

	@Override
	public Mahasiswa getMhs(int mhsId) {
		return (Mahasiswa) sessionFactory.getCurrentSession().get(Mahasiswa.class, mhsId);
	}
	
}
