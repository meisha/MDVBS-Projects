/*
 * project PubIt
 * 
 * package com.mray.pubit
 * 
 * author Meisha Ray
 * 
 * date Feb 9, 2013
 */
package com.mray.pubit;

import java.util.HashMap;

import com.mray.lib.formThings;
import com.mray.stars.Stars;

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
		// Calling class
		LinearLayout linlay = new LinearLayout(this);
		LinearLayout entry = formThings.singleEntryWithButton(this,"How was your food?", "Rate");
		
		
		Button rateButton = (Button) entry.findViewById(2); // Finds the view
		rateButton.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				// Tagging
				EditText pubName = (EditText) v.getTag();
				double totalDouble = Double.parseDouble(stars.getText().toString());
				Log.i("BUTTON CLICKED: ", pubName.getText().toString());
				
				HashMap<Stars, Integer> likeIt = Stars.getStars(stars);
			}
		});
		
		linlay.addView(entry);
		setContentView(linlay);
//		setContentView(R.layout.activity_main);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
