package com.mray.veganbrews;

import java.util.ArrayList;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;


public class Favorites extends LinearLayout {
	Button _add;
	Button _remove;
	Spinner _favList;
	Context _context;
	ArrayList<String> _brewerys = new ArrayList<String>();
	
	public Favorites(Context context){
		super(context);
		_context = context;
		
		LayoutParams lp;
		_brewerys.add("Select a Favorite");
		_favList = new Spinner(_context);
		lp = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		_favList.setLayoutParams(lp);
		//My Array
		ArrayAdapter<String> listAdapter = new ArrayAdapter<String>(_context, android.R.layout.simple_spinner_item, _brewerys);
		listAdapter.setDropDownViewResource(android.R.layout.simple_dropdown_item_1line);
		_favList.setAdapter(listAdapter);//sets the listAdapter for list
		
			
		_favList.setOnItemSelectedListener(new OnItemSelectedListener(){
			@Override
			public void onItemSelected(AdapterView<?> parent, View v, int pos, long id){
				Log.i("Fav Selected", parent.getItemAtPosition(pos).toString());
			}
			@Override
			public void onNothingSelected(AdapterView<?> parent){
				Log.i("Favorite Selected", "None");
			}
		});
		
		updateFavs();
		
		// Buttons
		_add = new Button(_context);
		_add.setText("Add");
		_remove = new Button(_context);
		_remove.setText("Remove");
		
		this.addView(_favList);
		this.addView(_add);
		this.addView(_remove);
		
		//Sets layout params
		lp = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		this.setLayoutParams(lp);
	}
	private void updateFavs(){
		_brewerys.add("10 Barrel Brewery");
		_brewerys.add("4 Hands Brewery");
		_brewerys.add("5 Rabbit Cervecer");
		_brewerys.add("512 Brewing Company");
		_brewerys.add("Abita Brewing Company");
	}
	
}
