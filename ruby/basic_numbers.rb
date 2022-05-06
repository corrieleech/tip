#PRIMES

#FIZZBUZZ

#FIBONACCI NUMBERS
# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

# inital array of [0,1]
# go until array is 9 times long

# def fibonacci_calc(nth_number)
#   array = [0,1]
#   while array.length < nth_number
#     array << array[-1] + array[-2]
#   end
#   array[-1]
# end

# p fibonacci_calc(9)
# p fibonacci_calc(100)


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

    # def leap_year_check(year)
    #   leap_year = false
    #   if year % 4 == 0
    #     if year % 400 == 0
    #       leap_year = true
    #     elsif year % 100 == 0
    #       leap_year = false
    #     else
    #       leap_year = true
    #     end
    #   end
    #   leap_year
    # end
    
    # p leap_year_check(1996)
    # p leap_year_check(1997)
    # p leap_year_check(1900)
    # p leap_year_check(2000)

#MULTIPLES OF 3 AND 5

#COLLATZ CONJECURE

#LARGEST PALINDROME PROJECT

