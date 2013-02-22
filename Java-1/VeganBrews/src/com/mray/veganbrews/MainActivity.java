package com.mray.veganbrews;

import java.util.ArrayList;

import com.mray.brewerys.Brewery;
import com.mray.brewerys.Company;
import com.mray.brewerys.States; 
import com.mray.lib.FormThings;
import com.mray.lib.WebStuff;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;
	SearchForm _search;
	BreweryDisplay _brewery;
	Favorites _favList;
	Boolean _connected = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		
		_context = this;
		_appLayout = new LinearLayout(this);
		
		_search = new SearchForm(_context, "Find a Vegan Brewery", "Find It");
		
		//Search Button
		Button searchBtn = _search.getButton();
		searchBtn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
				// Is it working?
				Log.i("Click Handler: ", _search.getField().getText().toString());
				
			}
		});
		//Detect Network Connection
		_connected = WebStuff.getConnectionStatus(_context);
		if(_connected){
			Log.i("Network Connection", WebStuff.getConnectionType(_context));
		}
		
		// Add the brewery display
				_brewery = new BreweryDisplay(_context);
				
				// Adds FavList 
				_favList = new Favorites(_context);
				
				//Adds the view to the main layout
				_appLayout.addView(_search);
				_appLayout.addView(_brewery);
				_appLayout.addView(_favList);
				
				// Sets orientation
				_appLayout.setOrientation(LinearLayout.VERTICAL);
			
		setContentView(_appLayout);
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
