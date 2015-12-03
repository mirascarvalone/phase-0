 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: eat ice cream before it melts
// Goals: go around eating all the ice cream you can find before it melts
// Characters: Melinda, an ice cream fanatic
// Objects: Melinda, ice cream (melting)
// Functions: moving function that moves Melinda, eat ice cream function, and melt ice cream function

// Pseudocode
// Make ice cream object that has various ice creams in different random locations -- display to console (they don't move)
// Make Melinda object with location property.
// Add functions to Melinda object: movement (if in same place as ice cream, increment # ice creams by 1) - whenever she moves in any direction, each ice cream melts 5%
// Can only eat ice cream if she's in same loation and it has amount > 0
// When she has reached each of the 3 ice creams, success

// Initial Code
var ice_cream_1 = {
  name: "Chocolate",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}

var ice_cream_2 = {
  name: "Strawberry",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}

var ice_cream_3 = {
  name: "Vanilla",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}


var Melinda = {
  posX: 0,
  posY: 0,
  ice_cream: 0,
  success: false,

  move: function (input){
    if (input === 'up'){
      Melinda.posY +=1;
      ice_cream_1.amount -= .05;
      ice_cream_2.amount -= .05;
      ice_cream_3.amount -= .05;
    }
    else if (input === 'down'){
      Melinda.posY -=1;
      ice_cream_1.amount -= .05;
      ice_cream_2.amount -= .05;
      ice_cream_3.amount -= .05;

    }
    else if (input === 'right'){
      Melinda.posX +=1;
      ice_cream_1.amount -= .05;
      ice_cream_2.amount -= .05;
      ice_cream_3.amount -= .05;
    }
    else if (input === 'left'){
      Melinda.posX -=1;
      ice_cream_1.amount -= .05;
      ice_cream_2.amount -= .05;
      ice_cream_3.amount -= .05;
    }

  console.log("Melinda has position: " + Melinda.posX + ", " + Melinda.posY)

  if (Melinda.posX === ice_cream_1.posX && Melinda.posY === ice_cream_1.posY && ice_cream_1.amount > 0){
    Melinda.ice_cream +=1;
    }
  else if (Melinda.posX === ice_cream_2.posX && Melinda.posY === ice_cream_2.posY && ice_cream_2.amount > 0){
    Melinda.ice_cream +=1;
    }
  else if(Melinda.posX === ice_cream_3.posX && Melinda.posY === ice_cream_3.posY && ice_cream_3.amount > 0){
    Melinda.ice_cream +=1;
    }

  if (Melinda.ice_cream === 3) {
    Melinda.success = true;
    }
  }

}
console.log(ice_cream_1.name + " has position " + ice_cream_1.posX + ", "+ ice_cream_1.posY)
console.log(ice_cream_2.name + " has position " + ice_cream_2.posX + ", "+ ice_cream_2.posY)
console.log(ice_cream_3.name + " has position " + ice_cream_3.posX + ", "+ ice_cream_3.posY)
Melinda.move('right')
Melinda.move('up')
console.log(Melinda.ice_cream)
console.log(Melinda.success)


// Refactored Code
var ice_cream_1 = {
  name: "Chocolate",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}

var ice_cream_2 = {
  name: "Strawberry",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}

var ice_cream_3 = {
  name: "Vanilla",
  posX: Math.floor(Math.random()*10+1),
  posY: Math.floor(Math.random()*10+1),
  amount: 1
}


var Melinda = {
  posX: 0,
  posY: 0,
  ice_cream: 0,
  success: false,

  move: function (input){
    switch(input){
      case 'up':
        Melinda.posY +=1;
        break;
      case 'down':
        Melinda.posY -=1;
        break;
      case 'right':
        Melinda.posX +=1;
        break;
      case 'left':
        Melinda.posX -=1;
        break;
    }

  ice_cream_1.amount -= .05;
  ice_cream_2.amount -= .05;
  ice_cream_3.amount -= .05;

  console.log("Melinda has position: " + Melinda.posX + ", " + Melinda.posY)
  console.log("Each ice cream has " + ice_cream_1.amount + " left.")

  if ((Melinda.posX === ice_cream_1.posX && Melinda.posY === ice_cream_1.posY && ice_cream_1.amount > 0) || (Melinda.posX === ice_cream_2.posX && Melinda.posY === ice_cream_2.posY && ice_cream_2.amount > 0) || (Melinda.posX === ice_cream_3.posX && Melinda.posY === ice_cream_3.posY && ice_cream_3.amount > 0)){
    Melinda.ice_cream +=1;
    }

  if (Melinda.ice_cream === 3) {
    Melinda.success = true;
    }
  }
}

console.log(ice_cream_1.name + " has position " + ice_cream_1.posX + ", "+ ice_cream_1.posY)
console.log(ice_cream_2.name + " has position " + ice_cream_2.posX + ", "+ ice_cream_2.posY)
console.log(ice_cream_3.name + " has position " + ice_cream_3.posX + ", "+ ice_cream_3.posY)
Melinda.move('right')
Melinda.move('up')
Melinda.move('up')
Melinda.move('up')
Melinda.move('up')
console.log(Melinda.ice_cream)
console.log(Melinda.success)



// Reflection
// What was the most difficult part of this challenge?
//  Coming up with an idea was very difficult - I haven't really ever played computer games so I had to look through some of the ones on code combat for inspiration.
// What did you learn about creating objects and functions that interact with one another?
//  I learned a lot about how to do this in practice, rather than looking at examples. I kept making several mistakes, like forgetting to write object.property, so it was useful to see that in action in my own code.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//  I wasn't really doing anything fancy so I didn't learn any new methods, but I did try a case statement for the first time in JavaScript. I also used the random function to generate a random location for the ice cream - the syntax was different than Ruby so that was useful to learn.
// How can you access and manipulate properties of objects?
//  We can access and manipulate properties of objects in a few ways - in this exercise we were creating functions to do that, and using the results of the user input to change the location and behavior of the objects in a function.