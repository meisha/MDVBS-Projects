package com.mray.veganbrews;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class SearchForm extends LinearLayout{
	
	EditText _searchField;
	Button _searchBtn;

	public SearchForm(Context context){
		super(context);
		
		LayoutParams  layParm;
		
		
		_searchField = new EditText(context);
		layParm = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		_searchField.setLayoutParams(layParm);
		
		_searchBtn = new Button(context);
		
		this.addView(_searchField);
		this.addView(_searchBtn);
		
		
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
