# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  @sum = 0
  for num in arr
    @sum += num
  end
  return @sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length <= 2
    return sum arr
  else 
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
 (0 .. arr.length-1).each do |i|
    (0 .. arr.length-1).each do |j|
      if arr[i] + arr[j] == n && i != j
        return true
      end
    end
  end  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /^[bcdfghjklmnpqrstvwxz]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s =~ /^(?:[01]*0)?0$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price.to_f
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$" +  sprintf('%.2f', @price).to_s
  end 
end
