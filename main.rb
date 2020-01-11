# Dev: Zach Baird
# Objective: 
# This method takes a string and array of potential substrings. It counts each valid
#   instance of a substring and returns the results as a hash.

def substrings(string_to_count, dictionary)
  strings_array = string_to_count.split
  
  results = Hash.new

  dictionary.each do |potential_substring|
    strings_array.each do |word|

      if word.downcase.include? potential_substring
        if results[potential_substring].nil?
          results[potential_substring] = 1
        else
          results[potential_substring] += 1
        end
      end

    end
  end

  return results

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)