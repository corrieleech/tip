# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

#create a function that takes in two arrays
#identify the shortest array
#set index at 0
#loop through the shortest array, checking if each number in shortest array is in the larger array
  #nested loop!
#if the number is in the largest loop, continue
#if not return false
#return true, because you got through whole short array without breaking

# def subset?(number_array1, number_array2)
#   shorest_array = number_array1
#   longest_array = number_array2
#   if number_array2.length < number_array1.length
#     shorest_array = number_array2
#     longest_array = number_array1
#   end
#   shorest_array.each do |number|
#     if longest_array.include?(number) == false
#       return false
#     end
#   end
#   return true
# end

# p subset?([1, 2, 3, 4, 5, 6], [6, 3, 2])
# p subset?([1, 2, 3, 4, 5, 6], [6, 7, 2])

# def subset_hash?(number_array1, number_array2)
#   if number_array1.length < number_array2.length
#     shortest_array = number_array1
#     longest_array = number_array2
#   else
#     shortest_array = number_array2
#     longest_array = number_array1
#   end
#   longest_number_hash = {}
#   longest_array.each {|number|longest_number_hash[number] = true }
#   shortest_array.each do |number|
#     unless longest_number_hash[number]
#       return false
#     end
#   end
#   return true
# end

# p subset_hash?([1, 2, 3, 4, 5, 6], [6, 3, 2])
# p subset_hash?([1, 2, 3, 4, 5, 6], [6, 7, 2])

#ARRAY DUPLICATE

# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

#write a function that takes in an array
#create a hash where the keys are all the numbers in the array and the value is false
#go through the array and if the key is false, turn to true
#if the key is already true (duplicate), then return the number

# def find_dupes(numbers)
#   number_hash = Hash.new(false)

#   numbers.each do |number| 
#     if number_hash[number] == true
#       return number
#     else
#       number_hash[number] = true
#     end
#   end

#   return number_hash
# end

# p find_dupes([-4, -1, 4, 1, 0, -4])

###MISSING LETTER
# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

#create a function that takes in a string
#create an alphabet string variable with "abc..."
#turn alphabet variable into a hash where key is the letter and default value is false 
#iterate through each letter in the arguement string (to downcase) and if the letter key is true, return that letter. if not, set the value to true

# def missing_letter(string)
#   string = string.downcase
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   alphabet_hash = Hash.new
#   alphabet.each_char { |letter| alphabet_hash[letter] = false }
#   string.each_char { |letter|alphabet_hash[letter] = true }
#   missing_letter = alphabet_hash.keep_if { |key, value| value == false }
#   missing_letter = missing_letter.keys
#   if missing_letter.length == 0
#     return "No letters missing."
#   else
#     return missing_letter[0]
#   end
# end

# p missing_letter("The quick brown box jumps over a lazy dog")
# p missing_letter("adcbFe p qgorz shNy tikJlxm vw") #should be 'u'
# p missing_letter("bcdfefgshijklffffmnofspqrdstuvwxyza") #should be "no letter missing"

###FIRST UNIQUE CHARACTER

# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Examples:

# s = "leetcode"
# return 0.
# (The "l" is the first character that only appears once in the string, and appears at index 0.)

# s = "loveleetcode",
# return 2.
# (The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)

# Note: You may assume the string contain only lowercase letters.
