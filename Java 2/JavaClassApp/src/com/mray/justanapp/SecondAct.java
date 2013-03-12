package com.mray.justanapp;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class SecondAct extends Activity implements OnClickListener {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_second);
		Button myRecipeIntent = (Button) findViewById(R.id.button03); // find recipe button from website
		
		TextView message = (TextView) this.findViewById(R.id.textView02);
		
		Bundle bundle = getIntent().getExtras();
		message.setText(bundle.getString("message"));
		
		// Button takes user back to the main activity
		Button enterBtn = (Button) this.findViewById(R.id.button02); // Enter button to go back to the main view
		enterBtn.setOnClickListener(this);
		
		/* 
		 * 
		 * Implicit Intent Recipe Website  
		 * IT IS WORKING... GOES TO THE FOODNETWORK WEBSITE
		 * 
		 */
		myRecipeIntent.setOnClickListener(new OnClickListener(){
		@Override
		public void onClick(View blogs){
			Uri myURL = Uri.parse("http://www.foodnetwork.com/");
			Intent myRecipeintent = new Intent(Intent.ACTION_VIEW, myURL);
			startActivity(myRecipeintent);
		}
		});
	}
	/* 
	 * Checking to see if network is available.
	 * IT IS WORKING (hehe helps when the wifi is turned on for the phone).
	 * 
	 */
	private boolean haveNetworkConnection() {
	    boolean haveConnectedWifi = false;
	    boolean haveConnectedMobile = false;

	    ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
	    NetworkInfo[] netCon = cm.getAllNetworkInfo();
	    for (NetworkInfo nc : netCon) {
	        if (nc.getTypeName().equalsIgnoreCase("WIFI"))
	            if (nc.isConnected())
	                haveConnectedWifi = true;
	        if (nc.getTypeName().equalsIgnoreCase("MOBILE"))
	            if (nc.isConnected())
	                haveConnectedMobile = true;
	    }
	    return haveConnectedWifi || haveConnectedMobile;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.second, menu);
		return true;
	}

	/*
	 * (non-Javadoc)
	 * @see android.view.View.OnClickListener#onClick(android.view.View)
	 */
	@Override
	public void onClick(View arg0) {
		String returnString = "One of my Favorite Foods!";
		
		Intent returnIntent = new Intent();
		returnIntent.putExtra("user response", returnString);
		setResult(RESULT_OK, returnIntent);
		finish();
		
	}

}
