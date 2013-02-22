package com.mray.veganbrews;

import android.content.Context;
import android.widget.GridLayout;
import android.widget.TextView;

	public class BreweryDisplay extends GridLayout {
		//Global vars
		TextView _brewery;
		TextView _state;
		TextView _country;
		TextView _details;
		Context _context;
		
		public BreweryDisplay(Context context){
			super(context);
			
			_context = context;
			this.setColumnCount(2);
			
			TextView breweryLabel = new TextView(_context);
			breweryLabel.setText("Brewery:");
			_brewery = new TextView(_context);
			TextView stateLabel = new TextView(_context);
			stateLabel.setText("State:");
			_state = new TextView(_context);
			TextView countryLabel = new TextView(_context);
			countryLabel.setText("Country:");
			_country = new TextView(_context);
			TextView detailsLabel = new TextView(_context);
			detailsLabel.setText("Details:");
			_details = new TextView(_context);
			
		}


}
