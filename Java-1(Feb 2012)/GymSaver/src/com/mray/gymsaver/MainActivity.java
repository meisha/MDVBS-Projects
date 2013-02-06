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
import android.view.View;
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
	TextView tview1;
	TextView savings;
	
	
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
		tView.setText("Did you work out today?");
		
		// Adds the Text View
		linlay.addView(tView);
		
		// Edit Text View
		eText = new EditText(this);
		
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
		
		// Click Event
		btn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// input hours into the edit text field and convert it to the amount of money saved
				
				// int
				int onehr = getResources().getInteger(R.integer.onehour);
				
				
				// String
				int entry = Integer.parseInt(eText.getText().toString());
				
				// Hour of workout input
				int num2 = (1/onehr)*entry;
				
				
				// Conditional
				if (num2 >= 1){
					savings.setText("You worked out over an hour. Your savings is $" +num2 + "\r\n");
				}
				else if (num2 >= 0){
					savings.setText("You didn't work out over an hour, so your savings for today is $0.00.");
				}
				
				// Output
				//savings.setText("Savings: $"+num2 + "\r\n" );
				
			}
		});
		
		// New Layout
		LinearLayout form = new LinearLayout(this);
		form.setOrientation(LinearLayout.HORIZONTAL);
		layParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
		form.setLayoutParams(layParams);
		
		// Adds Edit Text and Button to the view
		form.addView(eText);
		form.addView(btn);
		
		// Adds the new Layout 
		linlay.addView(form);
		
		// Results 
		savings = new TextView(this);
		linlay.addView(savings);
		
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
