# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.size == 1
    
  max_lower = -1*Float::INFINITY
  max_upper = -1*Float::INFINITY
  arr.each do |num|
    if num >= max_upper
      max_lower = max_upper
      max_upper = num
    elsif num >= max_lower
      max_lower = num
    else
      # do no swaps      
    end
  end
  max_upper + max_lower
end

def sum_to_n? arr, n
  return false if arr.size < 2
  for i in 0...(arr.size)
    for j in (i+1)...(arr.size)
      if (arr[i] + arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
