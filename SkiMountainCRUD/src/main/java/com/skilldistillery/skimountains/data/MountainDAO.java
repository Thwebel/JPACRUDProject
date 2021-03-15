package com.skilldistillery.skimountains.data;

import java.util.List;

import com.skilldistillery.skimountains.entities.Mountain;

public interface MountainDAO {
	
	Mountain findById(int id);
	
	List<Mountain> findAll();
	
	Mountain findBySearch(String search);
	
	Mountain addNewMt(Mountain newMt);
	
	Mountain updateMt(Mountain updatedMt);
	
	boolean deleteMt(Mountain targetMt);

}
