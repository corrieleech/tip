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

def subset?(number_array1, number_array2)
  shorest_array = number_array1
  longest_array = number_array2
  if number_array2.length < number_array1.length
    shorest_array = number_array2
    longest_array = number_array1
  end
  shorest_array.each do |number|
    if longest_array.include?(number) == false
      return false
    end
  end
  return true
end

p subset?([1, 2, 3, 4, 5, 6], [6, 3, 2])
p subset?([1, 2, 3, 4, 5, 6], [6, 7, 2])

def subset_hash?(number_array1, number_array2)
  if number_array1.length < number_array2.length
    shortest_array = number_array1
    longest_array = number_array2
  else
    shortest_array = number_array2
    longest_array = number_array1
  end
  longest_number_hash = {}
  longest_array.each {|number|longest_number_hash[number] = true }
  shortest_array.each do |number|
    unless longest_number_hash[number]
      return false
    end
  end
  return true
end

p subset_hash?([1, 2, 3, 4, 5, 6], [6, 3, 2])
p subset_hash?([1, 2, 3, 4, 5, 6], [6, 7, 2])

