/*
 * project PubIt
 * 
 * package com.mray.lib
 * 
 * author Meisha Ray
 * 
 * date Feb 9, 2013
 */
package com.mray.lib;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class formThings {

	/**
	 * Linear Layout
	 */
	public static LinearLayout singleEntryWithButton(Context context, String hint, String buttonText){
		LinearLayout linlay = new LinearLayout(context);
		LayoutParams layParams = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		linlay.setLayoutParams(layParams);
		
		EditText eText = new EditText(context);
		layParams = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		eText.setHint(hint);
		eText.setLayoutParams(layParams);
		eText.setId(1);
		
		Button btn1 = new Button(context);
		btn1.setText(buttonText);
		btn1.setId(2);
		btn1.setTag(eText); // Tagged the button with the text object
		
		linlay.addView(eText);
		linlay.addView(btn1);
		
		return linlay;
	}

}
