# Simple Substrings

# I worked on this challenge with Mo.


# Your Solution Below
def welcome(address)
  address_array = address.split(" ")
  if address_array.include?("CA")
    return "Welcome to California"
  else
    return "You should move to California"
  end
end