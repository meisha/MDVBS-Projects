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
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

// TODO: Auto-generated Javadoc
/**
 * The Class DisplayMessageActivity.
 */
public class DisplayMessageActivity extends Activity implements OnClickListener {
	
	Button myBlog_intent;
	
	
	
	@Override
	public void onCreate(Bundle bundle) {
		super.onCreate(bundle);
		setContentView(R.layout.second);
		myBlog_intent = (Button) findViewById(R.id.button1);

		Bundle extras = getIntent().getExtras();
		if (extras == null) return;

		String value1 = extras.getString("Value1");
		int value2 = extras.getInt("Value2");
		if (value1 != null ) {
			EditText text1 = (EditText) findViewById(R.id.EditText01);
			EditText text2 = (EditText) findViewById(R.id.EditText02);
			text1.setText(value1);
			text2.setText(value2+"");
			
			myBlog_intent.setOnClickListener(new OnClickListener(){
				
			// Implicit Intent Blog Website  IT IS WORKING... GOES TO WEBSITE
			@Override
			public void onClick(View blogs){
				Uri myURL = Uri.parse("http://dsc.discovery.com/tv-shows/curiosity/topics/10-ways-to-improve-memory.htm");
				Intent myBlog_intent = new Intent(Intent.ACTION_VIEW, myURL);
				startActivity(myBlog_intent);
			}
		});
			
	}
	}
	// Checking to see if network is available.
	// Works, but returns that there is no network available.
	
	private boolean haveNetworkConnection() {
	    boolean haveConnectedWifi = false;
	    boolean haveConnectedMobile = false;

	    ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
	    NetworkInfo[] netInfo = cm.getAllNetworkInfo();
	    for (NetworkInfo ni : netInfo) {
	        if (ni.getTypeName().equalsIgnoreCase("WIFI"))
	            if (ni.isConnected())
	                haveConnectedWifi = true;
	        if (ni.getTypeName().equalsIgnoreCase("MOBILE"))
	            if (ni.isConnected())
	                haveConnectedMobile = true;
	    }
	    return haveConnectedWifi || haveConnectedMobile;
	}
	
	public void onClick(View view) {
		finish();
	}
	/* Finish Returns the memory the user input as well as the number of the memory. 
	 * But looking at it now, I guess the user would have to remember the number of memory 
	 * that was before the one they just input. LOL back to the drawing board on that one.
	*/
	@Override
	public void finish() {
		Intent data = new Intent();
		data.putExtra("returnKey1", "" +"Memory Returned. ");
		data.putExtra("returnKey2", "Memory Number. ");
		setResult(RESULT_OK, data);
		super.finish();
	}
}