# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each do |x|
    s += x
  end
  return s;
end

def max_2_sum arr
  # YOUR CODE HERE
  
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  max1 = arr[0]
  max2 = arr[1]
  
  if max1 < max2
    max1 = max2
    max2 = arr[0]
  end
  
  arr.each do |item|
    if item >= max1
      max1 = max2
      max2 = item
    end
  end
  return max2+max1
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  z = 0
  arr.each do |x|
    arr.drop(z+1).each do |y|
      if x+y == n
        return true;
      end 

    end
    z +=1
  end
    return false;
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "+name
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if(s.length == 0)
    return false
  end
  
  ch = s[0]
  
  if ch.match(/[^A-Za-z]/)
    return false
  end
  #puts(ch)
  if(ch == "a" || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u'||ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U')
    return false
  end
  return true;
end

def binary_multiple_of_4? s
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		  return true
  end
		
		return false
end

# Part 3

class BookInStock
# YOUR CODE HERE

def initialize(isbn, price)
  if(isbn.length == 0)
    raise ArgumentError
  elsif price <= 0
    raise ArgumentError
  end
  

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
  @isbn=isbn
end

def price=(price)
  @price=price
end

def price_as_string
  "$%.2f" % @price
end

end


#puts(starts_with_consonant?('#'))

