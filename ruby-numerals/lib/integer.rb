class Integer

  UNITS_TEENS = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
      7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve",
      13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
      18 => "eighteen", 19 => "nineteen"}

  TENS = { 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
      70 => "seventy", 80 => "eighty", 90 => "ninety"}

  def to_english
    if self >= 100
      hundreds = (self/100).floor
      units = self - 100 * hundreds
      hundreds_word = UNITS_TEENS[hundreds]
      return (units == 0 ? "#{hundreds_word} hundred" : "#{hundreds_word} hundred and #{zero_to_99(units)}")
    end

    return zero_to_99(self)
  end

  private

  def zero_to_99(numeral)
    TENS.reverse_each do |number, word|
      units = numeral - number
      if units >= 0
        return (units == 0 ? word : "#{word}-#{UNITS_TEENS[units]}")
      end
    end

    return UNITS_TEENS[numeral]
  end
end