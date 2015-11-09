#2.1: Summary

#What does puts do?
  Puts prints out the value of your ruby program on its own line, but does not store the evaluated code.
#What is an integer? What is a float?
  An integer is a whole number that can be negative or positive, but does not have decimal points. A float can have decimal points.
#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  Float division produces an answer without decimal points (since the inputs have no decimal points). Ruby will round down in this case, whereas integer division produces a more "exact" answer with decimal points, since the inputs have decimal points.

#2.2 Try It!

Here are my Ruby codes:

Hours in a year:
```ruby
puts 24*365
```

Minutes in a decade:
```ruby
puts 60*24*365*10
```

#5 Exercises

https://github.com/mirascarvalone/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/mirascarvalone/phase-0/blob/master/week-4/basic-math.rb

https://github.com/mirascarvalone/phase-0/blob/master/week-4/simple-string.rb

#7 Reflection
#How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  Ruby uses + for addition, - for subtraction, * for multiplication, and / for division. As discussed above, division will produce different results depending on whether you're dealing with integers and floats. And it appears that the output of these expressions will be an integer if the inputs are integers, and a float if the inputs are floats. The inputs need to be consistent as well.
#What is the difference between integers and floats?
  Integers do not have decimals whereas floats do.
#What is the difference between integer and float division?
  Integers do not have decimals whereas floats do.
#What are strings? Why and when would you use them?
  Strings contain groups of letters and punctuation. You can use them to combine words and letters.
#What are local variables? Why and when would you use them?
  A local variable is a way to store a variable for use later in your program. You can store strings or numbers (integers or floats), and then reference the variable name later in your program rather than writing out the entire variable again.
#How was this challenge? Did you get a good review of some of the basics?
  This challenge was very simple. It would have been nice to make it longer or more thorough. Also, the assignment instructions are not clear about where to submit all the links to your work (four total).