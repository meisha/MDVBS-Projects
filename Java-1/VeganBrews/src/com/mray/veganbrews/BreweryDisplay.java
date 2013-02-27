package com.mray.veganbrews;

import android.content.Context;
import android.widget.GridLayout;
import android.widget.TextView;

	public class BreweryDisplay extends GridLayout {
		//Global vars
		TextView _brew;
		TextView _state;
		TextView _description;
		Context _context;
		
		public BreweryDisplay(Context context){
			super(context);
			
			_context = context;
			this.setColumnCount(2);
			
			TextView brewLabel = new TextView(_context);
			brewLabel.setText("Brew:");
			_brew = new TextView(_context);
			TextView detailsLabel = new TextView(_context);
			detailsLabel.setText("Description:");
			_description = new TextView(_context);
			TextView stateLabel = new TextView(_context);
			stateLabel.setText("State:");
			_state = new TextView(_context);
			
			//Adding to view
			this.addView(brewLabel);
			this.addView(_brew);
			this.addView(detailsLabel);
			this.addView(_description);
			this.addView(stateLabel);
			this.addView(_state);
			
		}


}
