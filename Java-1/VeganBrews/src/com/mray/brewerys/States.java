package com.mray.brewerys;
/* 
 * Enum
 * The 50 states. 
 * The user inputs a state and it pulls back Vegan Brewery companies that are located in that state
 * Still unsure if that's how it should work.... for now (02/13/13)
*/
public enum States {

	ALABAMA("Alabama"),
	ALASKA("Alaska"),
	ARIZONA("Arizona"),
	ARKANSAS("Arkansas"),
	CALIFORNIA("California"),
	COLORADO("Colorado"),
	CONNECTICUT("Connecticut"),
	DELEWARE("Deleware"),
	FLORIDA("Florida"),
	GEORGIA("Georgia"),
	HAWAII("Hawaii"),
	IDAHO("Idaho"),
	ILLINOIS("Illinois"),
	INDIANA("Indiana"),
	IOWA("Iowa"),
	KANSAS("Kansas"),
	KENTUCKY("Kentucky"),
	LOUISIANA("Louisana"),
	MAINE("Maine"),
	MARYLAND("Maryland"),
	MASSACHUSETTS("Massachusetts"),
	MICHIGAN("Michigan"),
	MINNESOTA("Minnesota"),
	MISSISSIPPI("Mississippi"),
	MISSOURI("Missouri"),
	MONTANA("Montana"),
	NEBRASKA("Nebraska"),
	NEVADA("Nevada"),
	NEW_HAMPSHIRE("New Hampshire"),
	NEW_JERSEY("New Jersey"),
	NEW_MEXICO("New Mexico"),
	NEW_YORK("New York"),
	NORTH_CAROLINA("North Carolina"),
	NORTH_DAKOTA("North Dakota"),
	OHIO("Ohio"),
	OKLAHOMA("Oklahoma"),
	OREGON("Oregon"),
	PENNSYLVANIA("Pennsylvania"),
	RHODE_ISLAND("Rhode Island"),
	SOUTH_CAROLINA("South Carolina"),
	SOUTH_DAKOTA("South Dakota"),
	TENNESSEE("Tennessee"),
	TEXAS("Texas"),
	UTAH("Utah"),
	VERMONT("Vermont"),
	VIRGINIA("Virginia"),
	WASHINGTON("Washington"),
	WEST_VIRGINIA("West Virginia"),
	WISCONSIN("Wisconsin"),
	WYOMING("Wyoming");
	
	private States(final String text){
		this.text = text;
	}
	
	private final String text;
	
	@Override
	public String toString(){
		return text;
	}
}
