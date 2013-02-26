package com.mray.veganbrews;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.JSONException;
import org.json.JSONObject;

import com.mray.brewerys.Brewery;
import com.mray.brewerys.Company;
import com.mray.brewerys.States; 
import com.mray.lib.FormThings;
import com.mray.lib.WebStuff;

import android.os.AsyncTask;
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
import android.widget.Toast;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;
	SearchForm _search;
	BreweryDisplay _brewery;
	Favorites _favList;
	Boolean _connected = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		
		_context = this;
		_appLayout = new LinearLayout(this);
		
		_search = new SearchForm(_context, "Find a Vegan Brewery", "Find It");
		
		//Search Button
		Button searchBtn = _search.getButton();
		searchBtn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				getBrewery(_search.getField().getText().toString());	
			}
		});
		//Detect Network Connection
		_connected = WebStuff.getConnectionStatus(_context);
		if(_connected){
			Log.i("NETWORK CONNECTION", WebStuff.getConnectionType(_context));
		}
				// Add the brewery display
				_brewery = new BreweryDisplay(_context);
				
				// Adds FavList 
				_favList = new Favorites(_context);
				
				//Adds the view to the main layout
				_appLayout.addView(_search);
				_appLayout.addView(_brewery);
				_appLayout.addView(_favList);
				
				// Sets orientation
				_appLayout.setOrientation(LinearLayout.VERTICAL);
			
		setContentView(_appLayout);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}
	
	private void getBrewery(String brewery){
		Log.i("CLICK", brewery);
		
		// URL
		String baseURL = "http://api.brewerydb.com/v2/beers?key=dc7a7c3340c5ea4c61add87f613468c0&ibu=65";
		String qs = null;
		
		URL finalURL;
		try{
			finalURL = new URL(baseURL + "?q" + qs + "&format=json");
			BreweryRequest bre = new BreweryRequest();
			bre.execute(finalURL);
		}catch(MalformedURLException e){
			Log.e("BAD URL", "MALFORMED URL");
			finalURL = null;
		}
		
	}
	
	
	private class BreweryRequest extends AsyncTask<URL, Void, String>{
		@Override
		protected String doInBackground(URL...urls ){
			String response = "";
			for (URL url: urls){
				response = WebStuff.getURLStringResponse(url);
			}
			return response;
		}
		
		@Override
		protected void onPostExecute(String result){
			Log.i("URL RESPONSE", result);
			try{
			JSONObject json = new JSONObject(result);
			JSONObject results = json.getJSONObject("query").getJSONObject("results").getJSONObject("name").getJSONObject("description");
			if(results.getString("col1").compareTo("N/A")==0){
				Toast toast = Toast.makeText(_context, "Brew Not Available", Toast.LENGTH_SHORT);
				toast.show();
			}else {
				Toast toast = Toast.makeText(_context, "Brew is Here" + results.getString("brews"), Toast.LENGTH_SHORT);
				toast.show();
			}
			}catch(JSONException e){
			Log.e("JSON", "JSON OBJECT EXCEPTION");
			}
			
		}
	}
}
