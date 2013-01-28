//author: Sharon "Meisha" Ray
//SDI 1109 Project 2
//Title: My Trip to Hell's Kitchen

//variables//
var me = "I", 
	place = "Charlotte International Airport",
	myFriends = ["Shanna", "Crystal"], 
	myFlight = "12:30 pm",
	onTime = true,
	bagWeights = ["25", "10", "13", "5"],
	bagCheck = true,
	bagNum = 5,
	carryOn = 2,
	allowedBags = 3,
	totalBagChecked = 4,
	extraBag1 = "25.00 fee",
	extraBag2 = "35.00 fee",
	money = 60.00,
	money1 = 20.00,
	foods = [4.00, 5.00, 3.00],
	cash = true,
	fee1 = 25.00,
	fee2 = 35.00,
	tax = 2.50 * 2,
	totalFees = 65.00,
	totalBill = 12.00,
	checkTime = 12,
	checkFlight = "delayed",
	food = ["Scone", "Mocha Frapp", "bottled water"],
	announcement = 4,
	cabRide = 45.00,
	money2 = 50.00;	 
	
//start//
	console.log("---- MY TRIP TO HELL'S KITCHEN! ----");
//array//
	console.log("I've decided that I want to go to L.A. to eat at Hell's Kitchen with two of my dear friends, " + myFriends [0] + " and " + myFriends [1] + ". They will be waiting for me at LAX.");
	console.log(me + " have a flight to catch at " + myFlight + ".");
	console.log(me + " waved down a taxi at 11am. The cab driver stopped and popped the trunk so I could toss my bags in.");
	console.log("Where do you want to go Miss?");
	console.log(place + " please and step on it.");
	console.log("The taxi cab peeled out and way we went to " + place + ".");

//STING Function #1//	
	console.log("How much do I owe you?");
	
	var getCabRide = function (){
		console.log("$" + cabRide + " Miss.");
		console.log("Here is " + money2);
		console.log("Thank you. Here is your change.");
		
	while(money2 > cabRide){
	console.log(money2 - cabRide);
	money2--;
	}
	};
	 getCabRide();
	 
	 console.log("---- INSIDE THE AIRPORT ----");
		
//checking bags//
	console.log("Hello. Have you checked in?");
		if (onTime = true){
	console.log("No, not yet. I\'d like to do that now.");
			}else if (onTime = false){
	console.log("No, not yet. " + me + "\'ll be back in a few to check in.");
			};
	
	console.log("Do you have any bags to check?");
		
	console.log("Yes. ");
	console.log("You are only " + allowedBags + " bags and 1 carry-on bag, you can pay the " + extraBag1 + " extra fee for your carry-on bag and the " + extraBag2 + " fee for your other checked bag.");

//bagcheck - Procedure Function #2//
		console.log("How many bags would you like to check?");
		
		var getBagCount = function(totalBagsChecked){
		while(totalBagsChecked > 0){
		console.log(totalBagsChecked);
		totalBagsChecked--;
		}
		};
		getBagCount(5);

console.log(me + " have " + bagNum + " to check and " + carryOn + " carry-on bags.");	 
				
//payment Type//
	console.log("Do you take cash?");
		if (cash = true){
	console.log("Yes, we do.");
	}else{
		console.log("No, credit card only.");
	};	
	
//NUMBER function #3//
	var getTotalFees = function(fee1,fee2,tax){
		var totalFees = fee1 + fee2 + tax;
	console.log("Your total is $"+ totalFees + ".");
	console.log("out of $" + money + ".");
	console.log("Let\'s count back your change." );

	while(money > totalFees) {
		console.log( money - totalFees);
		money --;
		};
	};
			getTotalFees(25,25,5);
				
	console.log("Thank you. Here are your tickets and receipt.");	

//Delayed Flight - BOOLEAN Function #4//		
		var getArrival = function( checkTime, checkFlight ) {
			if ( checkTime >= 12 ) {
			if (checkFlight === "delayed") {
		console.log( "Looks like my flight is delayed... argh" );
		} else {
		console.log( "Yay! " + me + "\'m on time and so is my flight" );
		}
		} else {
		console.log( "Crap… I\'m too late and missed my flight");
	}
	};
		getArrival(12, "delayed" );	

//ARRAY Function #5//		
	console.log("I'd like a " + food [0] + ", " + food [2] + ", and a " + food [1] + " please."); 
	console.log("You're total is $" + totalBill + ".");
		var getFood = function(){
		var totalBill = foods[0] + foods[1] + foods[2];
	console.log("Here\'s " + money1 + ".");
	console.log("Out of " + money1 + ":");
	console.log("Your change is…")
		for(var i = money1; i > totalBill; i--){
	console.log("$" + i);
	}
	}
		getFood();
	;
	console.log("Thank you.");
	

        console.log("Attention! Attention please! We are now boarding the flight to Los Angeles California at gate 15-D.")
      	
	
	
//boarding plane//
	console.log("May I have your ticket please?");
	console.log("Here you go.");
	console.log("Thank you. Have a great flight.");
	
//Finish//	
	console.log("To Be Continued...");