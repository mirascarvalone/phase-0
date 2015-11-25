# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

p number_array.map { |element|
  if element.kind_of?(Integer)
    element + 5
  else element.map { |nested|
    nested + 5
    }
  end
  }


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.map { |element|
  if element.kind_of?(String)
    element + "ly"
  else element.map { |nested|
    if nested.kind_of?(String)
      nested + "ly"
    else nested.map { |double|
      double + "ly"}
    end}
  end
  }

p startup_names.flatten.map { |name|
  name + "ly"
  }

# Reflection
# What are some general rules you can apply to nested arrays?
#   You can think of nested arrays as multiple arrays inside of each other. So I like to think of the outer-most array first, and then move inwards.
# What are some ways you can iterate over nested arrays?
#   The map method is useful to iterate over nested arrays (we used it here to add to the existing elements). It's important to be cognizant of how many arrays are inside your largest array.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#   The flatten method is very useful here although it does not preserve the structure of the arrays inside of each other. I'm not sure when this would be necessary though, so I'm happy I learned it in this challenge.