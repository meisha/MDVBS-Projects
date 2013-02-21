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
import android.view.Menu;
import android.widget.LinearLayout;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		_context = this;
		_appLayout = new LinearLayout(this);
		
		setContentView(_appLayout);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
