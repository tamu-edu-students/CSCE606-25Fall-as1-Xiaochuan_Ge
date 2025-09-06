# frozen_string_literal: true

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
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
