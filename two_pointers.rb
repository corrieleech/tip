#Array Mesh I
# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]
#write a function that takes in two strings
#create an empty output array
#create an index
#for each letter in the first array, loop through the second array
#push the letter with the index letter of the second array into the empty output array and add one to index
#return output array

# def array_mesh(letters, letters2)
#   meshed_array = []
#   letters.each { |letter|
#     letters2.each {|second_letter| meshed_array << letter + second_letter }
#   }
#   meshed_array
# end

# p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"])


#Array Mesh II
# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

#made a method that returns a new output array
#loop through each string in the array
#

# def every_combo(array)
#   array_of_combos = []
#   outer_index = 0
#   while outer_index < array.length
#     inner_index = 0
#     while inner_index < array.length
#       if array[outer_index] != array[inner_index]
#         array_of_combos << array[outer_index] + array[inner_index]
#       end
#       inner_index += 1
#     end
#     outer_index += 1
#   end
#   return array_of_combos
# end

# p every_combo(["a", "b", "c", "d"])
# p every_combo(["act", "boy", "cat", "dog"])

#Largest Product
# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

#write a function that takes in an array
#set largest product variable to first number * second number
#for each number in the array, loop through and multiply it by every other number
  #if that product is greater than the largest number, set the product to largest number
#add one to the index
#return largest product

def method_name
  
end

