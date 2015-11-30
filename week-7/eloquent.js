// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 55;
console.log(number*10)

// prompt("What is your favorite food?")
// console.log("Hey, that's my favorite food too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var number = "#"; number.length <= 7; number = number + "#")
  console.log(number);

for (var number = 1; number <= 100; number +=1)
  if (number % 3 == 0)
    console.log("Fizz");
  else if (number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);


for (var number = 1; number <= 100; number +=1)
  if (number % 3 == 0)
    if (number % 5 ==0)
      console.log("FizzBuzz");
    else
      console.log("Fizz");
  else if (number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);

// Functions

// Complete the `minimum` exercise.
function min(a,b) {
  if (a < b)
    return a;
  else if (a > b)
    return b;
  else
    return a
}
console.log(min(-5,0));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Mira",
  age: 25,
  favorite_foods: ['ice cream', 'pizza', 'chocolate'],
  quirk: "I can wiggle my ears"
};

console.log(me.name);