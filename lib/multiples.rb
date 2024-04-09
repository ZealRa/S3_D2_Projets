def is_multiple_of_3_or_5?(int)
(int % 3).zero? || (int % 5).zero?
end


def sum_of_3_or_5_multiples(final_number)
  return "Chiffre invalide" unless final_number.is_a?(Integer) && final_number >= 0

  final_sum = 0

  (0...final_number).each do |current_number|
    final_sum += current_number if is_multiple_of_3_or_5?(current_number)
  end

  return final_sum
end
