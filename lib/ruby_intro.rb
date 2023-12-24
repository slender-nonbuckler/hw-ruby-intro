# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res = 0
  arr.each {|x|
  res += x
}
  return res
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.size = 1
    return arr[0]
  else
    return arr.max(2).sum
  end
end

def sum_to_n? arr, n
  if arr.size <= 1
    return false
  else
    0.upto(arr.size - 2) do |i|
      (i+1).upto(arr.size - 1) do |j|
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  res = "Hello, " + name
  return res
end

def starts_with_consonant? s
  if s.size < 1 || (/\W/ =~ s) == 0  # first letter is non letter character
    return false
  end
  if (/[^aeiouAEIOU]/ =~ s) == 0
    return true
  else 
    return false
  end 
end

def binary_multiple_of_4? s
  if s.size < 4
    return false
  else
    return /1000/.match(s[-4, 4])
  end
end

# Part 3

class BookInStock
  @isbn = ""
  @price = 0.0
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :ISBM #getter and setter,allow read and write this attribute
  attr_accessor :price
  def price_as_string()
    return "$%.2f" % @price
  end
end
