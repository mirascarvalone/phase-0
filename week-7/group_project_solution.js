// PSEUDOCODE
// 1. Create two arrays of integers - one an even length and one an odd length
// 2. Create a sum function that calculates the sum of all integers in the array (must work on both our test arrays). To do this:
//  A. Create an empty sum variable
//  B. Loop through all elements in an array - at each step, increment the sum variable by each element in the array
// 3. Create a mean function that calculates the mean of all integers in an array (their sum divided by the length of the array). To do this:
//  A. Create an empty sum variable.
//  B. Loop through all elements in an array - at each step, increment the sum variable by each element in the array
//  C. Divide the final sum variable by the length of the array
// 4. Create a median function that calculates the median of an array (the "mid" point.). For an odd length array, this is the element array[length/2], and for an even length array, it's ((array[length/2] + array[length/2-1])/2)
//  A. Sort array from smallest to largest
//  B. Create empty median variable
//  C. IF Array.length is odd,
//    C1. return array[length/2]
//  D. IF Array.length is even,
//    D1. return (array[length/2] + array[(length/2)-1])/2