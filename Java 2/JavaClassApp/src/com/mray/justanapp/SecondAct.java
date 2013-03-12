package com.mray.justanapp;

import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

public class SecondAct extends Activity implements OnClickListener {

	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_second);
		Button myRecipeIntent = (Button) findViewById(R.id.button03);
		
		TextView message = (TextView) this.findViewById(R.id.textView02);
		
		Bundle bundle = getIntent().getExtras();
		message.setText(bundle.getString("message"));
		
		Button enterBtn = (Button) this.findViewById(R.id.button02);
		enterBtn.setOnClickListener(this);
		
		/* 
		 * 
		 * Implicit Intent Blog Website  
		 * IT IS WORKING... GOES TO WEBSITE
		 * 
		 */
		myRecipeIntent.setOnClickListener(new OnClickListener(){
		@Override
		public void onClick(View blogs){
			Uri myURL = Uri.parse("http://www.foodnetwork.com/");
			Intent myBlog_intent = new Intent(Intent.ACTION_VIEW, myURL);
			startActivity(myBlog_intent);
		}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.second, menu);
		return true;
	}

	@Override
	public void onClick(View arg0) {
		String returnString = "My Favorite Food!";
		
		Intent returnIntent = new Intent();
		returnIntent.putExtra("response", returnString);
		setResult(RESULT_OK, returnIntent);
		finish();
		
	}

}
