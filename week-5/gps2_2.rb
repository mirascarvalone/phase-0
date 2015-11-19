# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 1. go through items in the string, find them using the space, and put them in an array
# 2. set that array as our keys in our hash, set default quantity (value) to 1
# print the list to the console [can you use one of your other methods here?]: reference print method below
# OR print entire hash
# output: [what data type goes here, array or hash?] Hash mapping each item to its quantity

# Method to add an item to a list
# input: item name and optional quantity (for example: "orange", 1)
# steps: adding this pair to our hash at the end
# output: same hash, updated

# Method to remove an item from the list
# input: item name
# steps: iterate through the keys in our hash, checking for that item. when it's found, delete that key from the hash
# output: same hash, updated

# Method to update the quantity of an item
# input: item name and optional quantity
# steps: iterate through the keys in the hash, checking for that item. once found, update the value to reflect inputted quantity
# output: same hash, updated

# Method to print a list and make it look pretty
# input: our hash
# steps: iterate through the hash to print something like: "Orange": 4 (each on separate lines)
# output: see above

list = "carrots apples cereal pizza"

def create_list(list)
  items = list.split(' ')

  grocery_list = Hash.new(1)

  items.each do |x|
    grocery_list[x] = 1
  end

  p grocery_list
end

def add_item(item, quantity = 1, list)
  list[item] = quantity
end

def remove_item(item, list)
  list.delete(item)
end

def update_item(item, quantity, list)
  list[item] += quantity
end

def print_list(list)
  list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

#  REFACTOR

def create_list(list)
  items = list.split(' ')

  grocery_list = Hash.new()

  items.each{ |item| grocery_list[item] = 1 }

  print_list(grocery_list)
end

def add_item(item, quantity = 1, list)
  list[item] = quantity
end

def remove_item(item, list)
  list.delete(item)
end

def update_item(item, quantity = 0, list)
  list[item] += quantity
end

def print_list(list)
  list.each{ |item, quantity| puts "#{item}: #{quantity}" }
end


#  DRIVER CODE
grocery_list = create_list(list)
add_item("lemonade",grocery_list)
p grocery_list
remove_item("carrots",grocery_list)
p grocery_list
update_item("lemonade",-1,grocery_list)
p grocery_list
print_list(grocery_list)


# What did you learn about pseudocode from working on this challenge?
#   The pseudocode here was very structured and followed a specific format. I found that helpful.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   I thought hashes made more sense since we could explicitly match each item to its quantity.
# What does a method return?
#   A method executes a set of code on inupts that you pass in as arguments.
# What kind of things can you pass into methods as arguments?
#   You can pass anything - an array, a list, a string, a hash.
# How can you pass information between methods?
#   Yes! We did it in this challenge. This was the first time I've seen that and used it successfully.
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   The concept of passing information between methods is still confusing, but it was useful to get this introduction. It was also helpful to review methods we can call on arrays and hashes to add/delete/update entries, since I forgot a lot of that syntax.