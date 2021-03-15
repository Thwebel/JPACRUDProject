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
		String getAllMt = "SELECT mt FROM Mountain mt";
		
		List<Mountain> mountains = em.createQuery(getAllMt, Mountain.class).getResultList();
		
		return mountains;
	}

	@Override
	public Mountain findBySearch(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Mountain addNewMt(Mountain newMt) {
		
		em.persist(newMt);
		em.flush();
		
		return newMt;
	}

	@Override
	public Mountain updateMt(Mountain updatedMt) {
		
		return em.merge(updatedMt);
	}

	@Override
	public boolean deleteMt(Mountain targetMt) {
		boolean deleted = false;
		
		if(targetMt != null) {
			em.remove(targetMt);
		}
		
		deleted = !em.contains(targetMt);
		
		return deleted;
	}

}
