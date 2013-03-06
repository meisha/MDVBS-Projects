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

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import android.support.v4.app.NavUtils;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.provider.ContactsContract;

// TODO: Auto-generated Javadoc
/**
 * The Class DisplayMessageActivity.
 */
public class DisplayMessageActivity extends Activity implements OnClickListener {
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	public class ActivityTwo extends Activity {
		@Override
		public void onCreate(Bundle bundle) {
			super.onCreate(bundle);
			setContentView(R.layout.activity_display_message);
			Bundle extras = getIntent().getExtras();
			if (extras == null) {
				return;
			}
			String memory = extras.getString("memory");
			if (memory != null) {
				EditText text1 = (EditText) findViewById(R.id.textView1);
				text1.setText(memory);
			}
		}

		public void onClick(View view) {
			finish();
		}

		@Override
		public void finish() {
			Intent data = new Intent();
			data.putExtra("returnKey1", "Returned value from ActivityTwo. ");
			data.putExtra("returnKey2", "More returned value from ActivityTwo. ");
			setResult(RESULT_OK, data);
			super.finish();
		}
	}
//________________________________________________________________________
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	
		// Sets the text view as the activity's layout
		setContentView(R.layout.activity_display_message);


		// Gets the memory from the intent
		Intent intent = getIntent();
	
		// Show the Up button in the action bar.
		if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
			getActionBar().setDisplayHomeAsUpEnabled(true);
		}
		setupActionBar();
	}
	
	/**
	 * Set up the {@link android.app.ActionBar}, if the API is available.
	 */
	@TargetApi(Build.VERSION_CODES.HONEYCOMB)
	private void setupActionBar() {
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
			getActionBar().setDisplayHomeAsUpEnabled(true);
		}
	}

	/* (non-Javadoc)
	 * @see android.app.Activity#onCreateOptionsMenu(android.view.Menu)
	 */
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.display_message, menu);
		return true;
	}

	/* (non-Javadoc)
	 * @see android.app.Activity#onOptionsItemSelected(android.view.MenuItem)
	 */
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			// This ID represents the Home or Up button. In the case of this
			// activity, the Up button is shown. Use NavUtils to allow users
			// to navigate up one level in the application structure. For
			// more details, see the Navigation pattern on Android Design:
			//
			// http://developer.android.com/design/patterns/navigation.html#up-vs-back
			//
			NavUtils.navigateUpFromSameTask(this);
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		
	}

	
}
