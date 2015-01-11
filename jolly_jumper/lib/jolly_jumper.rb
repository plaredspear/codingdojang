class JollyJumper
  def array_of_differences(array)
    original = array.clone
    array.shift(1)

    result = []
    array.each_with_index do |item, index|
      result << (original[index] - item).abs
    end
    result
  end

  def jolly_jumper?(array)
    differences = array_of_differences(array)
    sum_of_sequence(differences.count) == differences.inject(:+)
  end

  private
    def sum_of_sequence(n)
      n * (n + 1) / 2
    end
end
