# PROBLEM 1: Given an array, write a function that returns an array that contains the original array’s values in reverse.

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

#PROBLEM 2: Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

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

# PROBLEM 3 Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

#create a function
#loop through the array and capitalize the 

def teen_writer(string)
  teen_speak = ""
  index = 0
  while index < string.length
    if index % 2 == 0
      teen_speak += string[index]
    else
      teen_speak += string[index].upcase
    end
    index += 1
  end
  teen_speak
end

p teen_writer("hello, how are your porcupines today?")

#LEAP YEAR
# Given a year, report if it is a leap year.
# The tricky thing here is that a leap year in the Gregorian calendar occurs:
    # on every year that is evenly divisible by 4
    # except every year that is evenly divisible by 100 - then no
    # unless the year is also evenly divisible by 400 - then yes
    # For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
    # If your language provides a method in the standard library that does this look-up, pretend it doesn’t exist and implement it yourself.

# Input: leap_year(1997)
# Output: false
# Input: leap_year(1996)
# Output: true
# Input: leap_year(1900)
# Output: false
# Input: leap_year(2000)
# Output: true

#write a function
#returns leap_year? true or false, starts false
#conditionals that check 
  #is divisible by four
    #is divisible by 100 ==> false
    #is divisible by 400 ==> true

def leap_year_check(year)
  leap_year = false
  if year % 4 == 0
    if year % 400 == 0
      leap_year = true
    elsif year % 100 == 0
      leap_year = false
    else
      leap_year = true
    end
  end
  leap_year
end

p leap_year_check(1996)
p leap_year_check(1997)
p leap_year_check(1900)
p leap_year_check(2000)

#FIBONACCI NUMBERS 
# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

# inital array of [0,1]
# go until array is 9 times long

def fibonacci_calc(nth_number)
  array = [0,1]
  while array.length < nth_number
    array << array[-1] + array[-2]
  end
  array[-1]
end

p fibonacci_calc(9)
p fibonacci_calc(100)