# frozen_string_literal: true
require 'set'

# Part 1

def sum(arr)
  # YOUR CODE HERE
  res = 0
  for i in arr do
    # puts i
    res += i
  end
  return res
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length <=2
    return sum(arr)
  end
  first_max = -Float::INFINITY
  second_max = -Float::INFINITY
  for value in arr do
    if value >= first_max
      second_max = first_max
      first_max = value
    elsif value >= second_max
      second_max = value
    end
  end
  return first_max + second_max
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  number_table = {}
  arr.each do |value|
    if number_table.key?(value)
      number_table[value] +=1
    else
      number_table[value] =1
    end
  end
  
  number_table.keys.each do |k|
    if number == k*2
      if number_table[k]>=2
        return true
      end
    elsif number_table.fetch(number-k,0)>=1
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return /\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/.match?(string)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return (/00\z/.match?(string) && (string[0..-3].include?("1")) && /\A\d+\z/.match?(string)) || string=="0"
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end
end
