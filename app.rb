dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  word_container = string.downcase.gsub(/[^a-z\s]/, '').split(" ")
  result = {}

  word_container.each do |word|
    (0...word.length).each do |start_index|
      (start_index...word.length).each do |end_index|
        substring = word[start_index..end_index]
        if dictionary.include?(substring)
          result[substring] = result[substring].to_i + 1
        end
      end
    end
  end

  result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
