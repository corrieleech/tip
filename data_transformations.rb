#ETL 1
# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

#create a function that takes in an array and a number
#create a return hash
#for each letter in the array, create a key/value pairing
#return hash

# def etl1(letters, number)
#   letter_hash = Hash.new
#   letters.each do |letter|
#     letter_hash[letter.downcase] = number
#   end
#   letter_hash
# end

# p etl1(["a", "E", "i", "o", "u"], 2)

#FLATTEN HASH
# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

#create a function that takes in a hash
#create an output array set to empty
#for each keypair in the hash, create a block that shoves each key then value into output array

# def flatten(hash)
#   flattened = []
#   hash.each_pair do |key, value |
#     flattened << key
#     flattened << value
#   end
#   flattened
# end

# p flatten({"a" => 1, "b" => 2, "c" => 3, "d" => 4})

#FLIP HASH
# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

#create a function that takes in a hash
#create a return hash
#for each pair, create a block that assigns the key to the value and the value to the key
#return the return hash

# def reverse_hash(hash)
#   reversed = Hash.new
#   hash.each_pair do |key, value|
#     reversed[value] = key
#   end
#   reversed
# end

# p reverse_hash({"a" => 1, "b" => 2, "c" => 3})

#ETL#2
# You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:
# Input:
# {
# 1 => ["A", "E", "I", "O", "U"]
# }
# Output:
# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }
# Input:
# {
# 1 => ["A", "E"],
# 2 => ["D", "G"]
# }
# Output:
# {
# 'a' => 1,
# 'd' => 2,
# 'e' => 1,
# 'g' => 2
# }

#create a function that takes in a hash
#create a return hash set to empty 
#for each value in the hash, create a block that
  #assigns the new hash key to the letter, and the value to the original key
#sort the return hash so that the keys are in alphabetical order
#return the hash

# def etl2(hash)
#   return_hash = Hash.new
#   hash.each_pair do |key, value_array|
#     value_array.each do |letter|
#       return_hash[letter.downcase] = key
#     end
#   end
#   return_hash = return_hash.sort_by { |letter, value | letter }.to_h
# end

# p etl2({
#   1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#   2 => ["D", "G"],
#   3 => ["B", "C", "M", "P"],
#   4 => ["F", "H", "V", "W", "Y"],
#   5 => ["K"],
#   8 => ["J", "X"],
#   10 => ["Q", "Z"]
#   })

#COMPLETE THE DATA II

#create a function that takes in two arrays: posts and users
#transform the users into a hash, where the user Id is the key and the value is the name
#for each post, loop through the post (map) and change the submitted by value to be the value of the key/value pair with the key = user_id 
#return map

# def complete_data_II(posts, users)
#   users_hash = Hash.new()
#   users.each do |user|
#     users_hash[user[:user_id]] = user[:name] 
#   end
#   posts.map do |post|
#     post[:submitted_by] = users_hash[post[:submitted_by]]
#   end
#   posts
# end

# pp complete_data_II(
#   [
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
#   ], 
#   [
#     {user_id: 403, name: "Aunty Em"},
#     {user_id: 231, name: "Joelle P."},
#     {user_id: 989, name: "Lyndon Johnson"},
#     {user_id: 111, name: "Patti Q."},
#     ]

#     )

#BOOK ORGANIZER


#ETL #3