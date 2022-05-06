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

# def largest_product(numbers)
#   largest_product = numbers[0] * numbers[1]
#   outer_index = 0
#   while outer_index < numbers.length
#     inner_index = outer_index + 1
#     while inner_index < numbers.length - 1
#       product = numbers[outer_index] * numbers[inner_index]
#       if product > largest_product
#         largest_product = product
#       end
#       inner_index += 1
#     end
#     outer_index += 1
#   end
#   largest_product
# end

# p largest_product([5, -2, 1, -9, -7, 2, 6])

##Two Sum 1

# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

#create a function that takes in array
#create output array
#using nested loop...
#loop through each number in the array and check if it and the next number (inner loop) adds to 10. if so, return that array
#if get to end and array.length = 0, return false

# def two_sum(numbers)
#   ten_pair = []
#   outer_index = 0
#   while outer_index < numbers.length
#     inner_index = outer_index + 1
#     while inner_index < numbers.length - 1
#       sum = numbers[outer_index] + numbers[inner_index]
#       if sum == 10
#         ten_pair << numbers[outer_index]
#         ten_pair << numbers[inner_index]
#         return ten_pair
#       end
#       inner_index += 1
#     end
#     outer_index += 1
#   end
#   return false
# end

# p two_sum([2, 5, 3, 1, 0, 7, 11])