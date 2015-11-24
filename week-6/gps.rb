# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection



def serving_size_calc(item_to_make, order_quantity)
  dessert_items = {"cookie" => 1, "cake" =>  5, "pie" => 7, "chocolate" => 2, "tart" => 4}

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

p serving_size_calc("pie", 7)
p serving_size_calc("tart", 8)
p serving_size_calc("chocolate", 6)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


