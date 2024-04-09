ALPHABET_SIZE = 26

def caesar_cipher(string)
  shifted_back = string.chars.map do |c|
    if ('a'..'z').include?(c)
      shifted_char = (c.ord + 5 - 'a'.ord) % ALPHABET_SIZE + 'a'.ord
      shifted_char.chr
    elsif ('A'..'Z').include?(c)
      shifted_char = (c.ord + 5 - 'A'.ord) % ALPHABET_SIZE + 'A'.ord
      shifted_char.chr
    else
      c
    end
  end.join
end

puts caesar_cipher("message")