// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Mo.
// This challenge took me 1.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// voteCount function:
// 1. Go through each property in votes
// 2. For each property, go through sub-property (for example, president)
// 3. Access the value for that property, check if that is found in the voteCount president
//  IF name exists as property of president property in voteCount, increment its name's value by 1
//  ELSE create new name property within sub-property, set value to 1

// officers function
// 1. Start with one property (example: president), then go through its objects (name - vote pairs), push those to an array
// 2. Sort this array, add top vote-getter to that object in officer count


// __________________________________________
// Initial Solution

for(var i in votes){
  if (voteCount.president.hasOwnProperty(votes[i]["president"])) {
    voteCount.president[votes[i].president] += 1;;
  }
  else {
    voteCount.president[votes[i].president] = 1;
  }
}

for(var i in votes){
  if (voteCount.vicePresident.hasOwnProperty(votes[i]["vicePresident"])) {
    voteCount.vicePresident[votes[i].vicePresident] += 1;;
  }
  else {
    voteCount.vicePresident[votes[i].vicePresident] = 1;
  }
}

for(var i in votes){
  if (voteCount.secretary.hasOwnProperty(votes[i]["secretary"])) {
    voteCount.secretary[votes[i].secretary] += 1;;
  }
  else {
    voteCount.secretary[votes[i].secretary] = 1;
  }
}

for(var i in votes){
  if (voteCount.treasurer.hasOwnProperty(votes[i]["treasurer"])) {
    voteCount.treasurer[votes[i].treasurer] += 1;;
  }
  else {
    voteCount.treasurer[votes[i].treasurer] = 1;
  }
}

// PRESIDENT
unsorted_votes = [];
for (var student in voteCount.president){
  unsorted_votes.push([student, voteCount.president[student]])
}

sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]})
officers.president = sorted_votes[0][0]

// VICE PRESIDENT
unsorted_votes = [];
for (var student in voteCount.vicePresident){
  unsorted_votes.push([student, voteCount.vicePresident[student]])
}

sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]})
officers.vicePresident = sorted_votes[0][0]

// SECRETARY
unsorted_votes = [];
for (var student in voteCount.secretary){
  unsorted_votes.push([student, voteCount.secretary[student]])
}

sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]})
officers.secretary = sorted_votes[0][0]

// TREASURER
unsorted_votes = [];
for (var student in voteCount.treasurer){
  unsorted_votes.push([student, voteCount.treasurer[student]])
}

sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]})
officers.treasurer = sorted_votes[0][0]

// __________________________________________
// Refactored Solution
for (j in officers){
  for(var i in votes){
    if (voteCount[j].hasOwnProperty(votes[i][j])) {
      voteCount[j][votes[i][j]] += 1;;
    }
    else {
      voteCount[j][votes[i][j]] = 1;
    }
  }
}

for (j in officers){
  var unsorted_votes = [];
  for (var student in voteCount[j]){
    unsorted_votes.push([student, voteCount[j][student]])
  }

  sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]})
  officers[j] = sorted_votes[0][0]
}


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//  This was a hard challenge since I had experience iterating over nested arrays (also in Ruby), but doing this in objects was relatively new. Luckily, the concepts are mostly the same.
// Were you able to find useful methods to help you with this?
//  We looked up a way to sort an object by its values and return the associated object. That was useful to find who won the election.
// What concepts were solidified in the process of working through this challenge?
//  Working with nested objects this much was helpful and good practice.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)