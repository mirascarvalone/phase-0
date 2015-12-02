// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mo.

// Pseudocode
// input: function that takes integer as input
// output: string of number separated by commas every 3 spaces

// 1. convert integer to string
// 2. reverse string backwards
// 2. split string backwards into array
// 3. make an empty string variable
// 4. iterate through array, IF index % 3 == 0, insert comma into string variable (from step 4), ELSE insert element
// 5. Remove initial , before index 0

// Initial Solution
// function separateComma(number){
//   var number_string = number.toString();
//   var numbers_array = number_string.split("").reverse();
//   var answer_array = [];
//   var index = 0;
//   while (index < numbers_array.length) {
//     if (index % 3 == 0){
//       answer_array.unshift(",")
//     }
//     answer_array.unshift(numbers_array[index]);
//     index ++;
//   }
//   var answer_string = answer_array.join("");
//   return answer_string.slice(0,answer_string.length-1);
// }

// Refactored Solution
function separateComma(number){
  var numbers_array = number.toString().split("").reverse();
  var answer_array = [];
  for (var index = 0; index < numbers_array.length; index ++) {
    if (index % 3 == 0){
      answer_array.unshift(",")
    }
    answer_array.unshift(numbers_array[index]);
  }
  return answer_array.join("").slice(0,answer_array.join("").length-1);
}



// Your Own Tests (OPTIONAL)

console.log(separateComma(1))
console.log(separateComma(12))
console.log(separateComma(123))
console.log(separateComma(1234))
console.log(separateComma(12345))
console.log(separateComma(123456))
console.log(separateComma(1234567))


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//  I tried to forget the work we'd done on this project in Ruby, but a lot of the ideas were still there (such as thinking about reversing). I approached the problem a little differently since there are fewer built in methods that I'm familiar with.
// What did you learn about iterating over arrays in JavaScript?
//  We refactored with a for loop to save space (instead of using while), which was useful. I do miss the .each method from Ruby.
// What was different about solving this problem in JavaScript?
//  We had to iterate over our array fully and then convert it to and from a string. There was a little more work as we had fewer built in arrays to choose from.
// What built-in methods did you find to incorporate in your refactored solution?
//  We used .slice and .unshift which were useful. The unshift method puts elements of an array into a string backwards. The .slice method was useful to get rid of our trailing comma. There's probably a better way to write this to avoid having that extra comma, so I'll see if someone else comes up with that when doing peer reviews :)