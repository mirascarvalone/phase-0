// Pad an array challenge

// In this challenge, you'll want to write two methods pad and pad!. Each method accepts an array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded" with (see the example with "apple" below).

// If the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.

// PSEUDOCODE

// Create function that accepts an array of integers or strings, and a number (minimum size), and optional argument to pad to array
// IF number <= array length, return array
//  ELSE
//    IF optional argument is nil, add nil to end of array UNTIL its length == number
//    IF optional argument is not nil, add that argument to end of array UNTIL its length == number

// Initial Solution

// function pad(array, number, argument){
  if (number <= array.length){
    return array;
  }
  else{
    while (array.length < number){
      array.push(argument);
    }
    return array;
  }
}

console.log(pad([1,2,3],5,'hi'))

// Refactored Solution
function pad(array, number, argument){
    while (array.length < number){
      array.push(argument);
    }
    return array;
}

console.log(pad([1,2,3],5,'hi'))


// Reflection
// What concepts did you solidify in working on this challenge?
//   This challenge helped solidify control flow in JavaScript.
// What was the most difficult part of this challenge?
//   This was pretty simple since I was familiar with how we did it in Ruby. The more difficult part was understanding which methods weren't available to us in JavaScript.
// Did you solve the problem in a new way this time?
//   I solved it a similar way, except without the "until" command since I don't think we can use that in JavaScript. But the concept is the same.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
//   The pseudocode was actually almost the same, it's mostly the methods that were different.