# Your Names
# 1) Mira
# 2) Jenna

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  dessert_items = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if dessert_items[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  servings = order_quantity/dessert_items[item_to_make]

  leftover_quantity = order_quantity % dessert_items[item_to_make]
  alternate_items = []

  if leftover_quantity == 0
    return "Calculations complete: Make #{servings} of #{item_to_make}"
  else
    dessert_items.each do |key, value|
      if value <= leftover_quantity
        alternate_items << key
      end
    end

  return "Calculations complete: Make #{servings} of #{item_to_make}, you have #{leftover_quantity} leftover ingredients. Suggested baking items: #{alternate_items.join(", ")} "

  end

end

p serving_size_calc("pie", 12)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


# What did you learn about making code readable by working on this challenge?
#   It was an interesting experience to take someone else's code and make it better. There were several ways our original code was not written in the most intuitive way, and that made it difficult to figure out what the code was doing in the first place.
# Did you learn any new methods? What did you learn about them?
#   I learned how to print multiple items in a text field. Previously I had only printed out one item by typing #{}, but here we made an array of possible items to make with leftover ingredients.
# What did you learn about accessing data in hashes?
#   I learned that when an item that isn't one of the keys in a hash (like "THIS IS AN ERROR") is passed into a hash, the output will be nil.
# What concepts were solidified when working through this challenge?
#   It was good practice to work on iterating through an array and adding keys or values from a hash into a new array.