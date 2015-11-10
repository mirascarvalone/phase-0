# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  # while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# =>The last line (170) is what shows up. However what's causing this error is line 14.
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# It's pointing to the space after the last period in the code, which is a comment.
# 6. Why did the interpreter give you this error?
# I believe here it's caused by line 14 with the while statement. When I remove that, the code executes fine.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => Line 35
# 2. What is the type of error message?
# => in `<main>': undefined local variable or method `south_park' for main:Object
# 3. What additional information does the interpreter provide about this type of error?
# It's referred to as a NameError.
# 4. Where is the error in the code?
# => The error is in line 35 overall.
# 5. Why did the interpreter give you this error?
# => The interpreter gives this error since it doens't know what to do with south_park. It's not defined as either a variable or a method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# => in `<main>': undefined method `cartman' for main:Object
# 3. What additional information does the interpreter provide about this type of error?
# =>NoMethodError
# 4. Where is the error in the code?
# => The error is all of line 50.
# 5. Why did the interpreter give you this error?
# => This error occurs because cartman is not defined in any way as a method.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65, but also 69, where the method is called
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# It doesn't point to anything specific but it occurs when the method is called.
# 5. Why did the interpreter give you this error?
# => We got this error because the method is defined using no arguments and then called using one.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says

# 1. What is the line number where the error occurs?
# => 84 and 88 (when the method is called)
# 2. What is the type of error message?
# =>ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# =>in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The error occurs in line 84 but materializes when the method is called in 88.
# 5. Why did the interpreter give you this error?
# => We get this error because the method is defined with one argument and called with zero.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 109, but 105 is also identified
# 2. What is the type of error message?
# =>ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# =>in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => In line 109
# 5. Why did the interpreter give you this error?
# => We get this error because the method is defined with two arguments and called with only one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# =>TypeError
# 3. What additional information does the interpreter provide about this type of error?
# =>in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#Line 124
# 5. Why did the interpreter give you this error?
# =>We get this error because the string can't act on the number. It would be fine if we had it the other way around (ie. the string first and 5 last.)

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# =>ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# =>in `/': divided by 0
# 4. Where is the error in the code?
# => It occurs when you divide by zero.
# 5. Why did the interpreter give you this error?
# => We can't divide by zero because of certain mathematical rules.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# =>LoadError
# 3. What additional information does the interpreter provide about this type of error?
# =>in `require_relative': cannot load such file -- /Users/mirascarvalone/Documents/phase-0/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# => The error occurs in line 155.
# 5. Why did the interpreter give you this error?
# => We got this error since that file does not exist in the directory we're currently in.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
#   The first one (line 14) was the most difficult for me because the error message indicated that the error was in the last line of the entire document, which was a comment. I'm still confused about why that is, but some trial and error helped me figure out that there were in fact errors before the last line.
# How did you figure out what the issue with the error was?
#   I tested it in a separate file that only had the text from the first two sections. Commenting things out there allowed me to isolate the issue.
# Were you able to determine why each error message happened based on the code?
#   Yes, although the language in the error messages is still new to me.
# When you encounter errors in your future code, what process will you follow to help you debug?
#   I found the process of testing out code in sections helpful. By isolating parts of your code (and sometimes putting them in another file even), and making small changes, you can assess if something runs properly before and after you make a particular change.
