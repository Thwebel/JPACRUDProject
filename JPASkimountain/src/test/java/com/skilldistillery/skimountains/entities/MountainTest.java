package com.skilldistillery.skimountains.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

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
	@Test
	@DisplayName("Test Full Mountain Mapping")
	void test1() {
		assertNotNull(mountain);
		assertEquals("Sugarloaf", mountain.getMountainName());
		assertEquals("Maine", mountain.getState());
		assertEquals(2820, mountain.getVertical());
		assertEquals(4237, mountain.getTopElevation());
		assertEquals(1417, mountain.getBaseElevation());
		assertEquals(1240, mountain.getSkiableArea());
		assertEquals(14, mountain.getLifts());
		assertEquals((short)160, mountain.getRuns());
		assertEquals((short)200, mountain.getAvgSnowFall());
		assertEquals("Rangely-Stratton", mountain.getMountainRange());
		assertEquals((short)1950, mountain.getStartYear());
		assertEquals(false, mountain.getNightSkiing());
		assertEquals(SlopeDifficulty.Intermediate, mountain.getDifficulty());
		assertEquals(true, mountain.getHaveShredded());
		assertEquals(null, mountain.getPersonalLog());
	}

}







