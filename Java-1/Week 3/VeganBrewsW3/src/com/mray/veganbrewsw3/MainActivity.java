/*
 * project VeganBrewsW3
 * 
 * package com.mray.veganbrewsw3
 * 
 * author Meisha Ray
 * 
 * date Feb 19, 2013
 * 
 * STARTED OVER AGAIN.....
 * 
 */
package com.mray.veganbrewsw3;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;
	SearchForm _search;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		_context = this;
		_appLayout = new LinearLayout(this);
		
		
		_search = new SearchForm(_context, "Find a Vegan Brewery", "Find");
		
		// Add Search Handler
		Button searchButton = _search.getButton();
		
		searchButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Log.i("Click Handler: ", _search.getField().getText().toString());
				
			}
		});
		
		_appLayout.addView(_search);
		
		
		setContentView(_appLayout);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
