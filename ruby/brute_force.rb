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

# ##FIRST UNIQUE CHARACTER

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

#create a function that takes in a string
#create a hash where default value is 0
#for each letter in the string, +1 the value of the hash[letter]
#iterate through hash and check if the value is 1, if so, that's your letter, so return the index of that character
#if it gets to the end, it means everything was a dupe, so return -1

# def first_unique_index(string)
#   string_hash = Hash.new(0)
#   string.each_char do |letter|
#     string_hash[letter] += 1
#   end
#   string_hash.each_pair do | key, value| 
#     if value == 1
#       return string.index(key)
#     end
#   end
#   return -1
# end

# p first_unique_index("loveleetcode")
# p first_unique_index("leetcode")
# p first_unique_index("lovelovelove")

#TWO SUM II
# This is the same exercise as Two Sum I, but you must now solve it in linear time.

# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

#write a function that takes in an array of numbers
#create a hash with the numbers, where key is the number, value is 0
#iterate through the hash checking if

def two_sum(numbers)
  ten_pair = []
  outer_index = 0
  while outer_index < numbers.length
    inner_index = outer_index + 1
    while inner_index < numbers.length - 1
      sum = numbers[outer_index] + numbers[inner_index]
      if sum == 10
        ten_pair << numbers[outer_index]
        ten_pair << numbers[inner_index]
        return ten_pair
      end
      inner_index += 1
    end
    outer_index += 1
  end
  return false
end

# def two_sum_linear(array)
#   number_hash = Hash.new(0)
#   array.each { |number| number_hash[number] += 1  }
#   number_hash.each_key do |key|
#     if number_hash.key?(10 - key) && key != 5
#       output = [key, (10 - key)]
#       return output
#     elsif number_hash[5] == 2
#       return [5, 5]
#     end
#   end 
#   return false
# end

# def two_sum_linear(array)
#   number_hash = Hash.new(0)
#   array.each do |number| 
#     number_hash[number] += 1
#     if number_hash.key?(10 - number) && number != 5
#       output = [(10 - number), number]
#       return output
#     elsif number_hash[5] == 2
#       return [5, 5]
#     end
#   end
#   return false
# end

# p two_sum_linear([2, 5, 3, 1, 0, 7, 11])

# require 'benchmark'

# Benchmark.bm(20) do |x|
#   x.report("two_sum_linear") { two_sum_linear([1, 4, 3, 0, 0, 1, 8, 4, 3, 0, 0, 1, 8, 4, 3, 0, 0, 8, 11, 1, 2]) }
#   x.report("two_sum_nested") { two_sum([1, 4, 3, 0, 0, 1, 8, 4, 3, 0, 0, 1, 8, 4, 3, 0, 0, 8, 11, 1, 2]) }
# end

###ETL #4
# This is very similar to ETL #3, but you must now accomplish the task in linear time (O(N)).

# Given an array of Youtube videos, for example:

videos = [
{title: 'How to Make Wood', author_id: 4, views: 6},
{title: 'How to Seem Perfect', author_id: 4, views: 111},
{title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
{title: 'Why Pigs Stink', author_id: 1, views: 12}
]

# and an array of authors, for example:

authors = [
{id: 1, first_name: 'Jazz', last_name: 'Callahan'},
{id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
{id: 3, first_name: 'Saron', last_name: 'Kim'},
{id: 4, first_name: 'Teena', last_name: 'Burgess'},
]

# Return a new array of videos in the following format, and only include videos that have at least 100 views:

# [
# {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# ]

#create a function that takes in two arrays
#create a hash for authors, where id is the key and value is concatenated name (first and last)
#create an output array
#for each video in the video array, if views is greater than 100, push the name, views, and name of the author
#return most viewed array

def most_views(videos, authors)
  most_viewed = []
  author_hash = Hash.new
  authors.each do |author|
    author_hash[author[:id]] = "#{author[:first_name]}"+" "+"#{author[:last_name]}"
  end
  videos.select! { |video| video[:views] >= 100 }
  videos.map! do |video|
    title = video[:title].gsub!(/["]/,'`')
    video = {title: video[:title], views: video[:views], author_name: author_hash[video[:author_id]]}
  end
  videos
end

pp most_views(videos, authors)