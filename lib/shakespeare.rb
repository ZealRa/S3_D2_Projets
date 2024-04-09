file_path = "shakespeare.txt"
swear_words_file_path = "swear_word.txt"
dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
gros_mots_array = File.readlines(swear_words_file_path)
gros_mots_array.map! { |word| word.chomp }
puts gros_mots_array.inspect


word_counts = Hash.new(0)

File.open(file_path, "r") do |file|
  file.each_line do |line|
    line.downcase.split.each do |word|
      if dictionary.include?(word)
        word_counts[word] += 1
      end
    end
  end
end

dictionary.each do |word|
  puts "#{word}: #{word_counts[word]}"
end