package com.skilldistillery.skimountains.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

@Entity 
public class Mountain {
	
	@Id
	private int id; 
	
	@Column(name = "mountain_name")
	private String mountainName;
	
	private String state;
	
	private Integer vertical;
	
	@Column(name = "top_elevation")
	private Integer topElevation;
	
	@Column(name = "base_elevation")
	private Integer baseElevation;
	
	@Column(name = "skiable_area")
	private Integer skiableArea;
	
	private Byte lifts;
	
	private Short runs;
	
	@Column(name = "avg_snow_fall")
	private Short avgSnowFall;
	
	@Column(name = "mountain_range")
	private String mountainRange;
	
	@Column(name = "start_year")
	private Short startYear;
	
	@Column(name = "night_skiing")
	private Boolean nightSkiing;
	
	@Column(name = "most_represented_difficulty", columnDefinition = "enum('Expert','Advanced','Intermediate','Beginner')")
	@Enumerated(EnumType.STRING)
	private SlopeDifficulty difficulty;
	
	@Column(name = "have_shredded")
	private Boolean haveShredded;
	
	@Column(name = "personal_log")
	private String personalLog;
	
	
	// methods

	public Mountain() {
		super();
	}


	


	public Mountain(int id, String mountainName, String state, Integer vertical, Integer topElevation,
			Integer baseElevation, Integer skiableArea, byte lifts, Short runs, Short avgSnowFall, String mountainRange,
			Short startYear, Boolean nightSkiing, SlopeDifficulty difficulty, Boolean haveShredded,
			String personalLog) {
		super();
		this.id = id;
		this.mountainName = mountainName;
		this.state = state;
		this.vertical = vertical;
		this.topElevation = topElevation;
		this.baseElevation = baseElevation;
		this.skiableArea = skiableArea;
		this.lifts = lifts;
		this.runs = runs;
		this.avgSnowFall = avgSnowFall;
		this.mountainRange = mountainRange;
		this.startYear = startYear;
		this.nightSkiing = nightSkiing;
		this.difficulty = difficulty;
		this.haveShredded = haveShredded;
		this.personalLog = personalLog;
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


	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}

	
	public Integer getVertical() {
		return vertical;
	}

	public void setVertical(Integer vertical) {
		this.vertical = vertical;
	}


	public Integer getTopElevation() {
		return topElevation;
	}

	public void setTopElevation(Integer topElevation) {
		this.topElevation = topElevation;
	}


	public Integer getBaseElevation() {
		return baseElevation;
	}

	public void setBaseElevation(Integer baseElevation) {
		this.baseElevation = baseElevation;
	}


	public Integer getSkiableArea() {
		return skiableArea;
	}

	public void setSkiableArea(Integer skiableArea) {
		this.skiableArea = skiableArea;
	}

	
	public byte getLifts() {
		return lifts;
	}

	public void setLifts(byte lifts) {
		this.lifts = lifts;
	}


	public Short getRuns() {
		return runs;
	}

	public void setRuns(Short runs) {
		this.runs = runs;
	}

	
	public Short getAvgSnowFall() {
		return avgSnowFall;
	}

	public void setAvgSnowFall(Short avgSnowFall) {
		this.avgSnowFall = avgSnowFall;
	}


	public String getMountainRange() {
		return mountainRange;
	}

	public void setMountainRange(String mountainRange) {
		this.mountainRange = mountainRange;
	}

	
	public Short getStartYear() {
		return startYear;
	}

	public void setStartYear(Short startYear) {
		this.startYear = startYear;
	}


	public Boolean getNightSkiing() {
		return nightSkiing;
	}

	public void setNightSkiing(Boolean nightSkiing) {
		this.nightSkiing = nightSkiing;
	}

	public SlopeDifficulty getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(SlopeDifficulty difficulty) {
		this.difficulty = difficulty;
	}


	public Boolean getHaveShredded() {
		return haveShredded;
	}

	public void setHaveShredded(Boolean haveShredded) {
		this.haveShredded = haveShredded;
	}


	public String getPersonalLog() {
		return personalLog;
	}

	public void setPersonalLog(String personalLog) {
		this.personalLog = personalLog;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Mountain [id=").append(id).append(", mountainName=").append(mountainName).append(", state=")
				.append(state).append(", vertical=").append(vertical).append(", topElevation=").append(topElevation)
				.append(", baseElevation=").append(baseElevation).append(", skiableArea=").append(skiableArea)
				.append(", lifts=").append(lifts).append(", runs=").append(runs).append(", avgSnowFall=")
				.append(avgSnowFall).append(", mountainRange=").append(mountainRange).append(", startYear=")
				.append(startYear).append(", nightSkiing=").append(nightSkiing).append(", difficulty=")
				.append(difficulty).append(", haveShredded=").append(haveShredded).append(", personalLog=")
				.append(personalLog).append("]");
		return builder.toString();
	}

	
}
