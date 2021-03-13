package com.skilldistillery.skimountains.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class MountainTest {
	
	private static EntityManagerFactory emf;
	private  EntityManager em;
	private Mountain mountain;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
		emf = Persistence.createEntityManagerFactory("SkiMountainPU");
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		mountain = em.find(Mountain.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		mountain = null;
	}

	@Test
	@DisplayName("Test Mountain Mapping")
	void test() {
		assertNotNull(mountain);
		assertEquals("Sugarloaf", mountain.getMountainName());
	}

}







