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
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

// TODO: Auto-generated Javadoc
/**
 * The Class MainActivity.
 * This is a memory saving app. 
 * If the user has something that they don't want to forget, they
 * can make a quick note of it in this app and refer to it later on.
 * At some point I'd like to add alerts to remind the user to look at the app
 * to see what they may not be remembering.
 */
public class MainActivity extends Activity  {
	private static final int REQUEST_CODE = 10;

	String activityTwoResult = null;
	TextView tv;
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}
	// My intent
	public void onClick(View view) {
		Intent intent = new Intent(this, DisplayMessageActivity.class);
		intent.putExtra("Memory", "");
		intent.putExtra("MemNum", 01);
		
		// Set REQUEST_CODE to any value to identify the callback
		startActivityForResult(intent, REQUEST_CODE);
	}

	/* 
	 * The result & toast
	*/
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (resultCode == RESULT_OK && requestCode == REQUEST_CODE) {
			if (data.hasExtra("returnKey1")) {
				Toast.makeText(this, data.getExtras().getString("returnKey1"),
						Toast.LENGTH_SHORT).show();
				activityTwoResult = data.getExtras().getString("returnKey1"); 
			}
		}
	}

	public void onResume() {
		super.onResume();
		
		if(activityTwoResult==null) return;
		tv = (TextView) findViewById(R.id.textView2);
		tv.setText(activityTwoResult);
	}
}