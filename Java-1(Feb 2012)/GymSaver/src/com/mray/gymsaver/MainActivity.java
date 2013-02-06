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
	TextView savings;
	TextView btnYes;
	TextView btnNo;
	
	

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
		
		// Yes Button
		btnYes = new Button(this);
		btnYes.setText("Yes");
		btnYes.setWidth(150);
		
		// No Button
		btnNo = new Button(this);
		btnNo.setText("No");
		btnNo.setWidth(150);
		
		btnYes.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
//				if (btnYes == true){
//					btnYes.setText("Congrats!");
//				}
//				else {
//					btnNo.setText("Shame, Shame!");
//				}
				if(btnYes==true) {
					btnYes.setText("Congrats!");	
				}else {
					btnNo.setText("Shame, Shame!");
				}
			}
		});	
		
		
		
		// Edit Text View
		eText = new EditText(this);
		
		// Adds a hint into the edit text box
		eText.setHint("Hours Worked Out");
		
		// Sets the width of the text box
		eText.setWidth(370);
		
		// Add Button to the view
		Button btn = new Button(this);
		
		// Adds text to the button
		btn.setText("Add");
		
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
				int num1 = (1/onehr)*entry;
				
				// Conditional
				if (num1 >= 1){
					savings.setText("You worked out for an hour or more. Your savings for today is $" +num1 + "\r\n");
				}
				else if (num1 <= 0){
					savings.setText("You didn't work out over an hour, so your savings for today is $0.00.");
				}
				
			}
		});
		
		// Clear Button
		Button btnClear = new Button(this);
		btnClear.setText("Clear");
		btnClear.setWidth(150);
		// Create Event Listener for Clear Button
		btnClear.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				savings.setText("");
				eText.setText("");
			}
		});
		
		
		// New Layout to show the output
		LinearLayout form = new LinearLayout(this);
		form.setOrientation(LinearLayout.HORIZONTAL);
		layParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
		form.setLayoutParams(layParams);
		
		// Adds Edit Text and Buttons to the view
		form.addView(eText);
		form.addView(btn);
		form.addView(btnClear);
		linlay.addView(btnYes);
		linlay.addView(btnNo);
		
		// Adds the new Layout 
		linlay.addView(form);
		
		// Output 
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
