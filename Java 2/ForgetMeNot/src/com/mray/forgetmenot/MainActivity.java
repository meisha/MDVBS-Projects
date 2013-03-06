/*
 * project	ForgetMeNot
 * 
 * package 	com.mray.forgetmenot
 * 
 * @author	Meisha Ray
 * 
 * date		Mar 6, 2013
 */
package com.mray.forgetmenot;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

// TODO: Auto-generated Javadoc
/**
 * The Class MainActivity.
 * This is a memory saving app. 
 * If the user has something that they don't want to forget, they
 * can make a quick note of it in this app and refer to it later on.
 * At some point I'd like to add alerts to remind the user to look at the app
 * to see what they may not be remembering.
 */
public class MainActivity extends Activity implements OnClickListener {

	/**
	 * Send message.
	 *
	 * @param view the view
	 * 
	 * Adding my intent for the save button.
	 * This button will take the user to the next activity when pressed.
	 */
	
	// My Vars
	Button enterButton;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		enterButton = (Button) findViewById(R.id.enterBtn);
		enterButton.setOnClickListener(this);
	}

	/* (non-Javadoc)
	 * @see android.app.Activity#onCreateOptionsMenu(android.view.Menu)
	 */
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	// My Intent when button is clicked it takes the user to the next activity
	@Override
	public void onClick(View arg0) {
		Intent intent = new Intent(this, DisplayMessageActivity.class);
		enterButton = (Button) findViewById(R.id.enterBtn);
		startActivity(intent);
	}

}
