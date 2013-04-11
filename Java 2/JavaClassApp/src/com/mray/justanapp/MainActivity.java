/*
 * project	JavaClassApp
 * 
 * package 	com.mray.justanapp
 * 
 * @author	Meisha Ray
 * 
 * date		Mar 12, 2013
 */
package com.mray.justanapp;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity implements OnClickListener{
	
	private TextView foodText;
	private EditText edit;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_activity);
		
		edit = (EditText) this.findViewById(R.id.EditText01);
		
		Button button = (Button) this.findViewById(R.id.button01);
		button.setOnClickListener(this);
		
		foodText = (TextView) this.findViewById(R.id.textView02);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public void onClick(View arg0) {
		Intent intent = new Intent(this, SecondAct.class);
		Bundle bundle = new Bundle();
		bundle.putString("message", edit.getText().toString());
		intent.putExtras(bundle);
		startActivityForResult(intent, 0);
	}
	
	protected void onActivityResult(int requestCode, int resultCode, Intent data)
	{
		if(resultCode == RESULT_OK){
			String foodResult = data.getStringExtra("response");
			foodText.setText(foodResult);
		}
		else
			{
			foodText.setText("Error");
		}
	}

}
