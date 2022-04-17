#Count Votes
# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

#make a function that accepts an array
#create an empty output hash
#loop through the array
#if no key is founud that matches the value we're iterating over, make a new key => value pair with value of 1
#if there is a key, increase the value by 1
#return output hash

# def count_votes(votes)
#   final_count = {}
#   votes.each do |vote|
#     lowercase_vote = vote.downcase
#     if final_count[lowercase_vote]
#       final_count[lowercase_vote] += 1
#     else
#       final_count[lowercase_vote] = 1
#     end
#   end
#   return final_count
# end

# p count_votes(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])
# p count_votes(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])

# votes.each_with_object(Hash.new(0)) do |vote, counted_votes|

# .each
# .map
# .reduce

#ALL THE MENU ITEMS
# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}
# Output: 14

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 0.99, "soda" => 2}
# Output: 13.99 << FLOATS!!!

#write a funtion that takes in a hash
#create a total variable and set to 0
#each loop through hash and increase the total variable by the key's value
#return the total variable

# def checkout(item_hash)
#   total = 0
#   item_hash.each do | _, price|
#     total = total + price
#   end
#   total
# end

# p checkout({"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 0.99, "soda" => 2})

#COMPLETE THE DATA 1
# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

#create a function that accepts posts (array) and users (hash)
#map loop through the posts array
  #nested loop that checks the users hash if the value of submitted_by == the value of user

####

