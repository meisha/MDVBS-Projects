package com.mray.veganbrewsw3;

import android.content.Context;
import android.widget.GridLayout;
import android.widget.TextView;



public class BreweryDisplay extends GridLayout {
	
	
	TextView _brewery;
	TextView _state;
	TextView _country;
	TextView _details;
	Context _context;
	
	public BreweryDisplay(Context context){
		super(context);
	}

}
