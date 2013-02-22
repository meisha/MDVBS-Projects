package com.mray.veganbrews;

import android.content.Context;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;

public class Favorites extends LinearLayout {
	Button _add;
	Button _remove;
	Spinner _favList;
	Context _context;
	
	public Favorites(Context context){
		super(context);
		_context = context;
		
		LayoutParams lp;
		
		
		
		_favList = new Spinner(_context);
		lp = new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f);
		_favList.setLayoutParams(lp);
		
		
		// Buttons
		_add = new Button(_context);
		_add.setText("Add");
		_remove = new Button(_context);
		_remove.setText("Remove");
		
		this.addView(_favList);
		this.addView(_remove);
		
		
		
	}

	
}
