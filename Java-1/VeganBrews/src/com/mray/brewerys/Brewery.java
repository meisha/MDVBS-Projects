package com.mray.brewerys;

public class Brewery implements Company {
	// Class Vars
	String name;
	String description;
	
	
	public Brewery(String name, String location){
		setName(name);
		//setLocation(location); //This keeps showing an error not sure why.
		
	}
	
	@Override
	public boolean setName(String name) {
		this.name = name;	
		return true;
	}

	@Override
	public boolean setDescription() {
		this.description = description;
		return true;
	}

	@Override
	public String getName() {
		return this.name;
	}

	@Override
	public String getDescription() {
		return this.description;
	}


}
