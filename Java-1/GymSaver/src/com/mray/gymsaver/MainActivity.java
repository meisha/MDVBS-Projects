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
	Button btnYes;
	Button btnNo;
	boolean showResponse;
	TextView chalText;
	int num1;
	int entry;
	int onehr;
	
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		// Linear Layout
		linlay = new LinearLayout(this);
		linlay.setOrientation(LinearLayout.VERTICAL);
		layParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
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
		

		btnNo.setOnClickListener(new View.OnClickListener() {
			/*
			 * (non-Javadoc)
			 * @see android.view.View.OnClickListener#onClick(android.view.View)
			 * 
			 * When Yes button is clicked the words shame shame show up on the no button. 
			 * when the No button is pressed the words congrats show up on the yes button.
			 * 
			 */
			@Override
			public void onClick(View v) {
			// Boolean Comparisons
				if(showResponse == true) {
					btnYes.setText("Congrats! Add some funds!");	
				}else  {
					btnNo.setText("Shame, Shame Give me 20!");
				}
			}
		});	
		
		btnYes.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				if(showResponse == true) {
					btnNo.setText("Shame, Shame Give me 20!");
				} else {
					btnYes.setText("Congrats! Add some funds!");
				}
			}
		});
		
		// Edit Text View
		eText = new EditText(this);
		eText.setHint("Hours Worked Out");
		eText.setWidth(400);
		
		// Add Button to the view
		Button btn = new Button(this);
		btn.setText("Add");
		btn.setWidth(150);
		
		// Function
		btn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// input hours into the edit text field and convert it to the amount of money saved
				
				// Resources
				int onehr = getResources().getInteger(R.integer.onehour);
				
				// int
				int entry = Integer.parseInt(eText.getText().toString());
				
				// int
				int num1 = (1/onehr)*entry;
				
				// Strings
				String dollars = "$";
				String endDollars = ".00";
				
				// Conditional
				if (num1 >= 1){
					savings.setText("You worked out for an hour or more. Your savings for today is " +dollars +num1 + endDollars + "\r\n");
				}
				else if (num1 <= 0){
					savings.setText("You didn't work out over an hour, so your savings for today is " +dollars + endDollars +".");
				}
				
				// For Loop
				for (int i = 0; i < num1; i++){
					num1 = (entry);
					onehr = (entry);
					chalText.setText("Your Challenge Count Down is" + onehr);
					
					if (onehr <= 0) //if entry was 0 then it posts message
					{
						chalText.setText("You should workout more! New Challenge added.");

					}else if (onehr >= 0) //this should be if the entry was greater or equal to 1 then good job.
					{
						chalText.setText("Good Job! You worked out for " +onehr + " hour(s).");
					}
				};
			}
		});
		
		// Clear Button 
		/*
		 * Clears the text box
		 * Clears the print outs
		 * Clears resets the Yes & No buttons back to normal
		 */
		Button btnClear = new Button(this);
		btnClear.setText("Clear");
		btnClear.setWidth(150);
		// Create Event Listener for Clear Button
		btnClear.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				savings.setText("");
				eText.setText("");
				chalText.setText("");
				btnYes.setText("Yes");
				btnNo.setText("No");
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
		
		// Prints out the Output of the hours into money values 
		savings = new TextView(this);
		linlay.addView(savings);
		
		// New Layout for Challenge Display
		LinearLayout challenge = new LinearLayout(this);
		challenge.setOrientation(LinearLayout.HORIZONTAL);
		layParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
		
		chalText = new TextView(this);
		challenge.addView(chalText);
		
		// Add the new layout
		linlay.addView(challenge);
		
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
