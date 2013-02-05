/*
 * project GymSaver
 * 
 * package com.mray.gymsaver
 * 
 * author Meisha Ray
 * 
 * date Feb 5, 2013
 */
package com.mray.gymsaver;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// TODO: Auto-generated Javadoc
/**
 * The Class MainActivity.
 */
public class MainActivity extends Activity {

	/* (non-Javadoc)
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	/* My Notes:
	 * 
	 * Gym Saver is an app that lets you keep track of how much money you've saved.
	 * For every hour you work out, you put $1.00 in a jar. 
	 * You can keep track of how many hours you've worked out with the app.
	 * 
	 */
	// Variables
	LinearLayout linlay;
	LinearLayout.LayoutParams layParams;
	EditText eText;
	TextView tView;
	
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		// Linear Layout
		linlay = new LinearLayout(this);
		linlay.setOrientation(LinearLayout.VERTICAL);
		layParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
		linlay.setLayoutParams(layParams);
		
		// Text View
		TextView tView = new TextView(this);
		
		// Adds text to the view
		tView.setText("Congrats on your workout today!");
		
		// Adds the Text View
		linlay.addView(tView);
		
		// Edit Text View
		EditText eText = new EditText(this);
		
		// Adds a hint into the edit text box
		eText.setHint("How many hours did you work out?");
		
		// Sets the width of the text box
		eText.setWidth(550);
		
		// Add Button to the view
		Button btn = new Button(this);
		
		// Adds text to the button
		btn.setText("Add Hours");
		
		// Sets the width of the button
		btn.setWidth(150);
		
		// New Layout
		LinearLayout form = new LinearLayout(this);
		form.setOrientation(LinearLayout.HORIZONTAL);
		form.setLayoutParams(layParams);
		
		// Adds Edit Text and Button to the view
		form.addView(eText);
		form.addView(btn);
		
		// Adds the new Layout 
		linlay.addView(form);
		
		
		setContentView(linlay);
		
	}

	/* (non-Javadoc)
	 * @see android.app.Activity#onCreateOptionsMenu(android.view.Menu)
	 */
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
