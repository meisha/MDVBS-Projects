package com.mray.lib;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class FormThings {

	public static LinearLayout singleEntryWithButton(Context context, String hint, String buttonText){
		LinearLayout linLay = new LinearLayout(context);
		
		LayoutParams lp = new LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT);
		linLay.setLayoutParams(lp);
		
		EditText et = new EditText(context);
		// pushes the button to the edge without bumping it off
		lp = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		et.setLayoutParams(lp);
		
		// Set an ID
		et.setId(1);
		
		et.setHint(hint);
		
		Button btn = new Button(context);
		btn.setText(buttonText);
		// Set an ID
		btn.setId(2);
		btn.setTag(et);
		
		linLay.addView(et);
		linLay.addView(btn);
		
		return linLay;
	}

}
