=begin
INSTRUCTION:
Complete the function/method so that it takes CamelCase string and returns the string in snake_case notation.
    Lowercase characters can be numbers. If method gets number, it should return string.
=end

=begin
SAMPLES:
# returns test_controller
to_underscore('TestController')

# returns movies_and_books
to_underscore('MoviesAndBooks')

# returns app7_test
to_underscore('App7Test')

# returns "1"
to_underscore(1)
=end

def to_underscore(string)
  res = ""
  if string.is_a?Integer
    return string.to_s
  else
    letter = string.split("")
    letter.each{|item|
      if ("A".."Z").include?item
        res += "_" + item.downcase
      else
        res += item
      end
    }
  end

  return res[1..res.length]
end


puts to_underscore("TestController")