#write a method that takes in a string and returns count of the letters of the string 

#sample input --> "mom"
#sample output --> ["m" => 2, "o" => 1 ]
#yes, count spaces and puncuation
#case doesn't matter
#alphabet doesn't matter for now;

#write a function that takes in a string
#create a new hash, set the default value to 0
#loop through each character in the string, create the key (character) in the hash and add one
#return the hash
                
# def count_chars(string)
#   letter_count_hash = Hash.new(0)
#   string.downcase.each_char do |letter|
#     letter_count_hash[letter] += 1
#   end
#   letter_count_hash
# end

#3 x 3 matrix and rotate it 90; 
  #0,0 0,1 0,2      0,2  1,2, 2,2
  #1,0 1,1 1,2      0,1  1,1  2,1
  #2,0 2,1 2,2      0,0  1,0  2,0
# [1, 2, 3],  ====> [7, 4, 1],
# [4, 5, 6],  ====> [8, 5, 2],
# [7, 8, 9]   ====> [9, 6, 3]

#write a function that takes in one matrix (1 array of 3 arrays)
#create an empty return matrix, where each value is 0
#for the first array in matrix, set the new position to the value from the old array
#return the new array, which should just be all zeros minus the 1, 2 3, avlues in the index of 2 in each array.





