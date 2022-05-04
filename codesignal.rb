# [1, 2, 3, 2, 3]

def solution(sequence)
  index = 0
  next_index = 1
  removed_numbers = []
  while index < sequence.length - 1
    if sequence[index] >= sequence[next_index]
      removed_numbers << sequence[next_index]
      sequence.delete_at(next_index)
      index += 0
      next_index += 0
    else
      index += 1
      next_index += 1
    end
  end
  p removed_numbers.length
  if removed_numbers.length < 2
    return true
  elsif 
    return false
  end
end

p solution([1, 2, 3, 2, 3])
p solution([10, 2, 3, 4, 5])