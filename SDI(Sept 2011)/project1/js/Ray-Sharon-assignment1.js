// Sharon "Meisha" Ray
// September 01, 2011
// SDI 1109 Project 1
// My Morning Routine 

alert("Project 1 : My Morning Routine!");

// my variables

var me = "I",
	myCat = "Buddy", 
	buddyWakeupTime = "7:40am"
	buddyNoWakeup = "8:00am" 
	heatWater = "heat up",  
	cream = "creamer",	
	noCreamer = "milk",
	noMilk = "coffee",
	noCoffee = "tea",
	myCakes = "pancakes",
	myEggs = "1",
	creamer = false; //boolean
	tea = true; //boolean
	buddyWakeupTime1 = true; //boolean
	buddyNoWakeup2 = false; //boolean	
	
		
console.log("Being a creature of habit as is my cat " + myCat + ", " );

	if(buddyWakeupTime1 === true) {
		console.log(me + " wake up every morning around " + buddyWakeupTime + " with a small white fuzzy paw giving me a quick smack across my head.");
		}; 
		
console.log(myCat + " doesn't always wake me up and if he doesn't,");
		
	if(buddyNoWakeup2 === false) {
		console.log(me + " wake up at " + buddyNoWakeup + ".");
	};

console.log("Once " + me + " get up " + me + " walk to the kitchen as " + myCat + " peels out thinking it's a race.");

console.log("The first thing " + me + " do is make my coffee. ");

console.log("That takes about two minutes.");

console.log("It takes one minute and 20 seconds to " + heatWater + " water in the ");

console.log("microwave, and 30 seconds or so to add a spoonful of Folgers coffee,");

console.log("two spoonfuls of sugar, and a splash of French Vanilla " + cream + " to give it that yummy taste. ");

console.log("If I\'m out of liquid " + cream + ",");

	// if there is no creamer then I will use milk
	if(creamer === false) {
		console.log("I\'ll add " + noCreamer + ". If " + me + " don't have any milk, ");
	} else {
		console.log("I\'ll make hot " + noCoffee + " instead.")
	};
	
	// if there is no creamer or milk, I will make hot tea instead
	if(tea === true) {
		console.log("I\'ll make hot " + noCoffee + " instead."); 
	}else {
		console.log(" there will be no " + noMilk + " for me.");
	};
		
console.log("After I make my tea, I\'ll decide what to cook for breakfast.");

	if(myEggs >=2 ) {
		console.log("There are " + myEggs + " eggs, so " + me + " can have eggs for breakfast.");
	} else {
		console.log("There is " + myEggs + " egg. I guess I\'ll have to have " + myCakes + " with LOTS of syrup!");
	};

	
	
	
	
		
	
		   