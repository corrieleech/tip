#REDUCE:SUM
# Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

# Input: [-5, 2, 6, 22]
# Output: 25

#write a function
#create a sum variable, set to 0
#loop through the array for each number, adding it to the previous total
#return the final sum

def sum_nums(array)
  sum = 0
  array.each do |number|
    sum = sum + number
  end
  sum
end

p sum_nums([1, 2, 3, 4])
p sum_nums([-5, 2, 6, 22])


#SEELCT LESS THAN 100
#Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

# Input: [1, -4, 99, 10001, 999, 36, 100]
# Output: [1, -4, 99, 36]

#write a funtion
#create an output array
#go through the array and for each number check it, if it's less than 100, shovel it into a new array

def less_than_100(array)
  small_array = []
  array.each do |number|
    if number < 100
      small_array << number
    end
  end
  small_array
end

p less_than_100([99, 101, 88, 4, 2000, 50])
p less_than_100([1, -4, 99, 10001, 999, 36, 100])

#MAP: DOUBLE
# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

# Input: [6, 0, 12, 100, -5]
# Output: [12, 0, 24, 200, -10]

#write a function that takes in an array
#define an empty array to return the new numbers
#loop through each number in the array and double its value, pushign the number into the new return array
#return said doubled array

def doubler(array)
  doubled = []
  array.each do |number|
    doubled << number * 2
  end
  doubled
end

p doubler([4, 2, 5, 99, -4])
p doubler([6, 0, 12, 100, -5])

#ARRAY MAX
# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# Input: [0, -100, 5, 62, 2, 12]
# Output: 62

#write a function that takes in an array
#define a greatest number variable, set to the first number in the array
#loop through the array and if the current number is greater than the greatest number, set that number to the greatest number
#return greatest number

def find_max(array)
  greatest_num = array[0]
  index = 1
  while index < array.length
    if array[index] > greatest_num
      greatest_num = array[index]
    end
    index += 1
  end
  greatest_num
end

p find_max([5, 17, -4, 20, 12])
p find_max([-10000, -100, -15, -1, -2, -5])

#REDUCE: PRODUCT
# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24
# Explanation: (1 x 2 x 3 x 4) = 24

# Input: [2, 3, -2]
# Output: -12

#write a function that takes in an array
#create a variable "product" to return at the end set to 1
#for each loop through the array, multiplying the product by the number
#retrun the product variable

def product(array)
  product = 1
  array.each {|number| product = product * number}
  product
end

p product([1, 2, 3, 4])
p product([2, 3, -2])

# REVERSE ARRAY 
#PROBLEM 1: Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# [1, 2, 3, 4, 5] ===> [5,4,3,2,1]
# [4, 6, 1, 7, 8] ===> [8,7,1,6,4]
# ["cat", "dog", "panda"] ===> ["panda","dog","cat"]

#write a funtion
#find the length of the array
#create an output array
#use while loop through the array starting at the end, and shovel each number from last to first into the output array until we reach the first number
  #index lessens by 1 each time
#return the output array

def reverse_array(array)
  reversed_array = []
  index = array.length - 1 #index = 2, 1, 0
  while index >= 0
    reversed_array << array[index]
    index -= 1
  end
  reversed_array
end

p reverse_array([1, 2, 3, 4, 5])
p reverse_array([4, 6, 1, 7, 8])
p reverse_array(["cat", "dog", "panda"])

#SKIP IT

# Given an array of numbers, write a function that returns a new array in which only select numbers from the original array are included, based on the following details:

# The new array should always start with the first number from the original array. 
# The next number that should be included depends on what the first number is. 
# The first number dictates how many spaces to the right the computer should move to pick the next number. 
#   For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. 
# This number gets added to the new array. 
# If this next number happens to be a 4, then the next number after that is the one four spaces to the right. 
# And so on and so forth until the end of the array is reached.

# Input:
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]

#write a function that takes in an array
#define a new array
#set index at 0
#loop through array, shoveling number at index into array then updating index to increase by that number
#return final array

def skippy(array)
  skipped = []
  index = 0
  while index < array.length
    skipped << array[index]
    index = index + array[index]
  end
  skipped
end

p skippy([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2])
