package com.mray.veganbrewsw3;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class SearchForm extends LinearLayout{

	// global vars
	EditText _searchField;
	Button _searchButton;
	
	// constructor
	public SearchForm(Context context){
		super(context);
		
		_searchField = new EditText(context);
		_searchButton = new Button(context);
		
		this.addView(_searchField);
		this.addView(_searchButton);
		
		
	}
	

}
