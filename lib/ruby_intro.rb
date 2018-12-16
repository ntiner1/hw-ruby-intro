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
  return "Hello, " << name
end

def starts_with_consonant? s
  return false if s.empty?
  lower_case = s.downcase[0]
  return false if /[^a-z]/.match(lower_case)
  !lower_case.start_with?("a", "e", "i", "o", "u")
end

def binary_multiple_of_4? s
  return false if s.empty? || /[^0-1]/.match(s)
  num = s.to_i(2)
  return (num % 4 == 0)
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0 
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    sprintf("$%0.02f", price.to_f)
  end
end
