# Read about the Ruby `map` method. Then refactor the code below using `map`.

# numbers = [1, 2, 4, 2]
# doubled_numbers = []
# numbers.each do |number|
#   doubled_numbers << number * 2
# end
# p doubled_numbers

numbers = [1, 2, 4, 2]
doubled_numbers = numbers.map { |number| number * 2 }

p doubled_numbers

# Use the `map` method to convert the array of hashes

# items = [
#   {id: 1, body: 'foo'},
#   {id: 2, body: 'bar'},
#   {id: 3, body: 'foobar'}
# ]

# into an array that only contains the ids. The result should look like:

# [1, 2, 3]

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

item_ids = items.map { |item| item[:id] }

p item_ids

# Use the `map` method with the `to_h` method to convert the array of hashes

# fruits = [
#   {"name" => "apple", "color" => "red"},
#   {"name" => "banana", "color" => "yellow"},
#   {"name" => "grape", "color" => "purple"}
# ]

# into a single hash where the keys are the names and the values are the colors. The result should look like:

# {"apple" => "red", "banana" => "yellow", "grape" => "purple"}

fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

fruits_hash = fruits.map { |fruit| [fruit["name"], fruit["color"]] }.to_h
p fruits_hash

# Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!


# p reverse_a_string("abcde")  #=> "edcba"

def reverse_a_string(string)
  split_string = string.split("")
  reverse_string = []
  string.length.times { reverse_string << split_string.pop}
  reverse_string.join
end

p reverse_a_string("abcde") 

# Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

# p find_longest_word("What is the longest word in this phrase?")  #=> "longest"

def find_longest_word(sentence)
  words = sentence.split(/\W+/).each { |word| 
  max = 0
  if word.length > max
    max = word.length
  end
}
  max
  
end

p find_longest_word("What is the longest word in this phrase?")  