# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "Hi, what's your first name?"
first_name = gets.chomp
puts "Hi, what's your middle name?"
middle_name = gets.chomp
puts "Hi, what's your last name?"
last_name = gets.chomp
puts "Your name is " + first_name + " " + middle_name + " " + last_name + "."


puts "What's your favorite number?"
number = gets.chomp
number2 = number.to_i + 1
puts "How about " + number2.to_s + " ? It is a better number."