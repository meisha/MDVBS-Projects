package com.mray.veganbrews;

import java.util.ArrayList;

import com.mray.brewerys.Brewery;
import com.mray.brewerys.Company;
import com.mray.brewerys.States; 
import com.mray.lib.FormThings;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;
	SearchForm _search;
	BreweryDisplay _brewery;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		
		_context = this;
		_appLayout = new LinearLayout(this);
		
		// Add the brewery display
		_brewery = new BreweryDisplay(_context);
		
		//Adds the view to the main layout
		_appLayout.addView(_search);
		_appLayout.addView(_brewery);
		// Sets orientation
		_appLayout.setOrientation(LinearLayout.VERTICAL);
		
		
		_search = new SearchForm(_context, "Find a Vegan Brewery", "Find It");
		
		//Search Button
		Button searchBtn = _search.getButton();
		
		// From week 2
//		LinearLayout linLay = new LinearLayout(this);
//		LayoutParams layPar = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
//		linLay.setLayoutParams(layPar);
//		linLay.setOrientation(LinearLayout.VERTICAL);
//		LinearLayout entryBox = FormThings.singleEntryWithButton(this, "Find a Brewery", "Find It");
//		Button findBtn = (Button) entryBox.findViewById(2);
		
		searchBtn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// LOGIC 
				// Get the tag
//				EditText companyName = (EditText) v.getTag();
//				if(companyName.getText().toString().length() > 0){
//					Log.i("Find It: ", companyName.getText().toString());
//				}else{
//					String userSearch = "Search by State";
//					Log.i("Find It: ", userSearch);
//				}
//				
				// Is it working?
				Log.i("BUTTON CLICKED: ", _search.getField().getText().toString());
				
			}
		});
		/* Example on pg. 132 in the book (Listing 3-39)  
		 */
		ArrayList<Company>brewerys = new ArrayList<Company>();
		brewerys.add(new Brewery("10 Barrel Brewery", "Ben, Oregon"));
		brewerys.add(new Brewery("4 Hands Brewery", "St. Louis, Missouri"));
		brewerys.add(new Brewery("5 Rabbit Cervecer", "Chicago, Illinois"));
		brewerys.add(new Brewery("512 Brewing Company", "Austin, Texas"));
		brewerys.add(new Brewery("Abita Brewing Company", "Abita Springs, Louisiana"));
		
		// Array
		String[] breweryNames = new String[brewerys.size()];
		for(int i=0; i<brewerys.size(); i++){
			breweryNames[i] = brewerys.get(i).getName();
		}
		RadioGroup brewOptions = FormThings.getOptions(this, breweryNames);
		
//		linLay.addView(brewOptions);
//		
//		linLay.addView(entryBox);
		
		setContentView(_appLayout);
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

}
