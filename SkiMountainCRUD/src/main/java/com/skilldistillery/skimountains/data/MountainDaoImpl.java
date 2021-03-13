package com.skilldistillery.skimountains.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.skimountains.entities.Mountain;

@Service 
@Transactional
public class MountainDaoImpl implements MountainDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Mountain findById(int id) {
		return em.find(Mountain.class, id);
	}

	@Override
	public List<Mountain> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Mountain findBySearch(String search) {
		// TODO Auto-generated method stub
		return null;
	}

}
