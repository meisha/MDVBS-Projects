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
import android.widget.EditText;

// TODO: Auto-generated Javadoc
/**
 * The Class DisplayMessageActivity.
 */
public class DisplayMessageActivity extends Activity {
	@Override
	public void onCreate(Bundle bundle) {
		super.onCreate(bundle);
		setContentView(R.layout.second);

		Bundle extras = getIntent().getExtras();
		if (extras == null) return;

		String value1 = extras.getString("Value1");
		int value2 = extras.getInt("Value2");
		if (value1 != null ) {
			EditText text1 = (EditText) findViewById(R.id.EditText01);
			EditText text2 = (EditText) findViewById(R.id.EditText02);
			text1.setText(value1);
			text2.setText(value2+"");
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