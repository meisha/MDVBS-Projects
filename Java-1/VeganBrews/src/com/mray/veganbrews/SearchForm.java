package com.mray.veganbrews;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class SearchForm extends LinearLayout{
	
	EditText _searchField;
	Button _searchBtn;

	public SearchForm(Context context, String hint, String buttonText){
		super(context);
		
		LayoutParams  layParm;
		
		
		_searchField = new EditText(context);
		layParm = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		_searchField.setLayoutParams(layParm);
		_searchField.setHint(hint);
		
		
		_searchBtn = new Button(context);
		_searchBtn.setText(buttonText);
		
		this.addView(_searchField);
		this.addView(_searchBtn);
		
		
	}
	

}
