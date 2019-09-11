package br.edu.gustavo.model;

public class WORKOUTS {
	
	private Integer id;
	private String name;
	
	private String monday;
	private String tuesday;
	private String wednesday;
	private String thursday;
	private String friday;
	private String saturday;
	private String sunday;
	private String categories;
	
	public Integer getId() { return id; }
	public void setId(Integer id) { this.id = id; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getMonday() { return monday; }
	public void setMonday(String monday) { this.monday = monday; }
	
	public String getTuesday() { return tuesday; }
	public void setTuesday(String tuesday) { this.tuesday = tuesday; }
	
	public String getWednesday() { return wednesday; }
	public void setWednesday(String wednesday) { this.wednesday = wednesday; }
	
	public String getThursday() { return thursday; }
	public void setThursday(String thursday) { this.thursday = thursday; }
	
	public String getFriday() { return friday; }
	public void setFriday(String friday) { this.friday = friday; }
	
	public String getSaturday() { return saturday; }
	public void setSaturday(String saturday) { this.saturday = saturday; }
	
	public String getSunday() { return sunday; }
	public void setSunday(String sunday) { this.sunday = sunday; }
	
	public String getCategories() { return categories; }
	public void setCategories(String categories) { this.sunday = categories; }
}
