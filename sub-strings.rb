dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word_or_phrase, dictionary)
  no_of_substrings = Hash.new(0)

  if (word_or_phrase.include?(" "))
    wop_array = word_or_phrase.downcase.split(" ")
    wop_array.each do |a_word|
      dictionary.each do |d_word|
        if (a_word.include?(d_word))
          no_of_substrings[d_word] += 1
        end
      end
    end
  elsif (word_or_phrase.is_a? String)
    dictionary.each do |d_word|
      if (word_or_phrase.downcase.include?(d_word))
        no_of_substrings[d_word] += 1
      end
    end
  else
    p "Invalid word or phrase."
  end
  p no_of_substrings
end

substrings("Howdy partner, sit down! How's it going?", dictionary)