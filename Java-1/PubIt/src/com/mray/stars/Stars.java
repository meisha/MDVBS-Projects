/*
 * project PubIt
 * 
 * package com.mray.stars
 * 
 * author Meisha Ray
 * 
 * date Feb 9, 2013
 */
package com.mray.stars;

import java.util.HashMap;

public enum Stars {
	BAD(1),
	EH(2),
	OKAY(3),
	DELISH(4),
	AWESOME(5);
	
	private final int value;
	
	Stars(int value){
		this.value = value;
	}
	
	public static HashMap<Stars, Integer> getStars(double amount){
		HashMap<Stars, Integer> stars = new HashMap<Stars, Integer>();
		
		Stars[] tasty1 = {BAD, EH, OKAY, DELISH, AWESOME};
		double total = amount*1;
		for(int i=0; i<tasty1.length; i++){
			Stars tasty2 = tasty1[i];
			int num = (int) Math.floor(total/tasty2.value);
			
			total = total%tasty2.value;
			stars.put(tasty2, num);
		}
		return stars;
	}
}
