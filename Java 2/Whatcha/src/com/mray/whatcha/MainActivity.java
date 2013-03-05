/*
 * project	Whatcha
 * 
 * package 	com.mray.whatcha
 * 
 * @author	Meisha Ray
 * 
 * date		Mar 5, 2013
 */
package com.mray.whatcha;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;


/**
 * The Class MainActivity.
 */
public class MainActivity extends Activity {
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	public final static String EXTRA_MESSAGE = "com.mray.watcha.MESSAGE";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}
	
	/*
	 * Called when the user clicks on the send button
	 */
	public void sendMessage(View view){
		/*
		 * This is the intent for the app to go to the next view 
		 * when the button is clicked.
		 */
		Intent intent = new Intent(this, DisplayMessageActivity.class);
		EditText editText = (EditText) findViewById(R.id.edit_message);
		String message = editText.getText().toString();
		intent.putExtra(EXTRA_MESSAGE, message); 
		startActivity(intent);
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

}
