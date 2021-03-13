package com.skilldistillery.skimountains.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity 
public class Mountain {
	
	@Id
	private int id; 
	
	@Column(name = "mountain_name")
	private String mountainName;

	
	// methods

	public Mountain() {
		super();
	}


	public Mountain(int id, String mountainName) {
		super();
		this.id = id;
		this.mountainName = mountainName;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getMountainName() {
		return mountainName;
	}


	public void setMountainName(String mountainName) {
		this.mountainName = mountainName;
	}

	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Mountain [id=").append(id).append(", mountainName=").append(mountainName).append("]");
		return builder.toString();
	}
	
	
	
}
