# def solution(sequence)
#   largest_number = sequence[0]
#   removed_numbers = []
#   index = 0
#   while index < sequence.length - 1
#     if sequence[index] < sequence[index + 1]
#       largest_number = sequence[index + 1]
#       index += 1
#     elsif sequence[index] >= sequence[index + 1]
#       removed_numbers << sequence[index]
#       sequence.delete_at(index)
#     end
#     p "#{removed_numbers} = removed_numbers"
#     p "#{sequence} = sequence"
#   end
#   if removed_numbers.length == 1
#     return true
#   else
#     return false
#   end
# end

def solution(sequence)
  first_max =  -100000
  second_max = -100000
  mis_matched_number = 0
  sequence.each do |val|
      if val > first_max 
          second_max = first_max 
          first_max = val 
      elsif val > second_max 
          first_max = val 
          mis_matched_number +=1 
      else 
          mis_matched_number +=1 
      end 
  end 
  return mis_matched_number <=1 
end

p solution([1, 2, 3, 4, 99, 5, 6]) #true
p solution([1, 2, 4, 3, 6, 5]) #false
p solution([10, 1, 2, 3, 4, 5, 6, 1]) #false
p solution([10, 2, 4, 6]) #true
p solution([100, 2, 4, 6, 8]) #true
p solution([1, 2, 3, 4, 5, 3, 5, 6]) #false
p solution([1, 2, 1, 2]) #false