/*
 * project BrewTrax
 * 
 * package com.mray.lib
 * 
 * author Meisha Ray
 * 
 * date Feb 11, 2013
 */
package com.mray.lib;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class BeerForm {

	public static LinearLayout singleEntryWithButton(Context context, String hint, String buttonText){
		LinearLayout linLay = new LinearLayout(context);
		LayoutParams layPar = new LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT);
		linLay.setLayoutParams(layPar);
		
		EditText eText = new EditText(context);
		layPar = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		
		eText.setHint(hint);
		eText.setLayoutParams(layPar);
		eText.setId(1);
		
		Button btn = new Button(context);
		btn.setText(buttonText);
		btn.setId(2);
		btn.setTag(eText);
		
		linLay.addView(eText);
		linLay.addView(btn);
		
		return linLay;
	}
}
