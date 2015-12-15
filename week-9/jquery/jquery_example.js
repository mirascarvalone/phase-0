// U3.W9:JQuery



// I worked on this challenge with Mo.
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
h1Elements = $('h1')
imgElements = $('img')
mascot = $('.mascot')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body > :first-child').css({'color': 'blue', 'border': '2px solid black', 'visibility': 'hidden'});

$('.mascot > h1').html('Chorus Frogs')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.adoptapond.info/guide_images/Chorus%20Frog.jpg')
  })

  $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
$('img').animate({
    opacity: '0.5',
    height: '150px',
    width: '150px'
  })

$('img').mouseenter(function () {
    $(this).css({border: '0 solid black'}).animate({
        borderWidth: 4
    });
}).mouseleave(function () {
     $(this).animate({
        borderWidth: 0
    });
});

// Reflection
// What is jQuery?
//  JQuery is a JavaScript library that allows us to modify HTML and CSS elements, select elements, and create animations.
// What does jQuery do for you?
//   A lot of things. In this exercise we learned how to create animations, handle events (like mouse-over and moving your mouse away from an element), and select DOM elements.
// What did you learn about the DOM while working on this challenge?
//  Working with the DOM in this challenge helped confirm that our code to select certain elements was working correctly.



})  // end of the document.ready function: do not remove or write DOM manipulation below this.