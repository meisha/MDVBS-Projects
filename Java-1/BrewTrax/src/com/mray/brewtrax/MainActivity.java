/*
 * project BrewTrax
 * 
 * package com.mray.brewtrax
 * 
 * author Meisha Ray
 * 
 * date Feb 11, 2013
 */
package com.mray.brewtrax;

import com.mray.lib.BeerForm;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		LinearLayout linLay = new LinearLayout(this);
		
		LinearLayout entryBox = BeerForm.singleEntryWithButton(this, "Find a Beer", "Go");
		//EditText beerName = (EditText) entryBox.findViewById(1);
		Button goBtn = (Button) entryBox.findViewById(2);
		
		goBtn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// Tagging
				EditText beerName = (EditText) v.getTag();
				Log.i("Button Clicked: ", beerName.getText().toString());
				
			}
		});
		
			
		linLay.addView(entryBox);
		
		
		setContentView(linLay);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
