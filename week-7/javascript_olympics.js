 // JavaScript Olympics

// I paired with Mo on this challenge.

// This challenge took me 1 hour.


// Warm Up



// Bulk Up
function athletesFunction(array) {
  for (var index = 0; index < array.length; index ++){
    array[index].win = array[index].name + " won the " + array[index].event
  }
}

// Driver code
var athlete1 = {
  name: "Sarah Hughes",
  event: "Figure Skating"
}

var athlete2 = {
  name: "Mira",
  event: "Marathon"
}

var array = [athlete1, athlete2]

console.log(athletesFunction(array))
console.log(athlete2.win)



// Jumble your words
function reverseString(string) {
  string.split("").reverse().join("");
}

// // Driver code
// console.log(reverseString("Mira"))

// 2,4,6,8
function getEven(array){
  answer_array = []
  for (var index = 0; index < array.length; index ++) {
    if (array[index] % 2 == 0){
      answer_array.push(array[index]);
    }
  }
  return answer_array
}

// Driver code
console.log(getEven([1,2,3,4]))


// "We built this city"
function Athlete(name, age, sport, quote){
    this.name = name,
    this.sport = sport,
    this.age = age,
    this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//  I improved my knowledge of the syntax necessary to write functions, if loops, etc. I also learned about constructor functions, which was new.
// What are constructor functions?
//  Constructor functions are a way to initialize a function and give an object a set of characteristics (like how we initialize a class in Ruby).
// How are constructors different from Ruby classes (in your research)?
//  In JavaScript, constructors define methods that are specific to that function, and there are not pre-built methods that we can apply to all objects. In Ruby, when we create a class, there are already pre-defined methods that apply to all objects.