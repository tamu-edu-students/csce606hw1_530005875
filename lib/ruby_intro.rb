# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  result = 0
  arr.each { |x| result = result + x}
  return result
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end

  i = 0
  m1 = -1000
  m2 = -1000
  while i < arr.length
    if arr[i] > m1
      m2 = m1
      m1 = arr[i]
    elsif arr[i] > m2
      m2 = arr[i]
    end
    i = i+1
  end

  return m1 + m2
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  h = {}
  h_index = {}
  arr.each{|x| h[x] = true}
  arr.each_with_index{ |val, index| h_index[val] = index}

  i = 0
  while i < arr.length
    if h[number-arr[i]] == true && h_index[number-arr[i]] != i
      return true
    end
    i = i + 1
  end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + "#{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.empty?
    return false
  end

  character = string[0]

  if (character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z')
    if character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u'
      return false
    elsif character == 'A' || character == 'E' || character == 'I' || character == 'O' || character == 'U'
      return false
    end
    return true
  else
    return false
  end

end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  i = 0
  while i < string.length
    if (string[i] == '0' || string[i] == '1') == false
      return false
    end
    i = i + 1
  end

  n = string.length
  if string[n-1] == '0' && string[n-2] == '0'
    return true
  end

  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("Expected non-empty isbn") if isbn.empty?
    @isbn = isbn
    raise ArgumentError.new("Expected non-zero price") if price <= 0
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$" + "#{format("%.2f", @price)}"
  end
end
