require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  #word_container = string.split(" ")
  appeared = []
  result = {}
  string_to_check = ''
  string.each_char do |letter|
    string_to_check += letter
    if dictionary.include?(string_to_check)
      appeared.push(string_to_check)
    end
  end
  string_to_check.each_char do |letter|
    string_to_check = string_to_check[1..-1]
    if dictionary.include?(string_to_check)
      appeared.push(string_to_check)
    end
  end
  appeared.each_with_index do |word, index|
    count = 0
    if word == appeared[index]
      count += 1
      result[word] = count
    end
  end
  result
end

p substrings('below low', dictionary)

# Does the count work with multiple words?

# string = 'hey there'
# word_container = string.split(//)
# p string
# p word_container
