# Read about the Ruby `select` method. Then refactor the code below using `select`.
# ```
numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#   if number % 2 == 0
#     even_numbers << number
#   end
# end
# p even_numbers
# ```

even_numbers = numbers.select { |n| n.even?}
p even_numbers

# Use the `select` method with the following array of hashes
# ```
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
# ```
# to create a new array of hashes that only contain movies with a rating less than 4.0.

low_rated_movies = movies.select { |movie| movie[:rating] < 4.0 }
p low_rated_movies

# Use the `select` method combined with the `map` method to convert the array of hashes
# ```
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
# ```
# into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
# ```
# [2, 3]
# ```

p movies.select { |movie| movie[:title].downcase.include?('b') }.map { |movie| movie[:id] }

# Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
# ```
# p palindrome?("racecar")   #=> true
# p palindrome?("wazzzzup")  #=> false
# ```

def palindrome?(string)
  string == string.reverse
end

p palindrome?("racecar")

# Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
# ```
# p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
# p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]

def split_array(array, integer)
  array.each_slice(integer).to_a
end

p split_array([0, 1, 2, 3, 4, 5], 3)