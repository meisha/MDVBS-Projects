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
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

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
	
	public void onClick(View view) {
		finish();
	}
	
	
	@Override
	public void finish() {
		Intent data = new Intent();
		data.putExtra("returnKey1", "" +"Memory Returned. ");
		data.putExtra("returnKey2", "Memory Number. ");
		setResult(RESULT_OK, data);
		super.finish();
	}
}