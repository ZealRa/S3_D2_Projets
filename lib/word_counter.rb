dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(words, dictionary)
  frequencies = Hash.new(0)

  words.each do |word|
   
    cleaned_word = word.downcase.gsub(/[[:punct:]]/, ' ')  
    cleaned_word.split.each do |w|
      
      frequencies[w] += 1 if dictionary.include?(w) 
    end
  end

  frequencies
end