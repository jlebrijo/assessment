class Integer

  UNITS_TEENS = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
      7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve",
      13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
      18 => "eighteen", 19 => "nineteen"}

  TENS = { 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
      70 => "seventy", 80 => "eighty", 90 => "ninety"}

  EXPONENTS = { 3 => "thousand", 6 => "million", 9 =>"billion", 12 => "trillion",
                15 => "quadrillion", 18 => "quintillion", 21 => "sextillion",
                24 => "septillion", 27 => "octillion", 30 => "nonillion",
                33 => "decillion", 36 => "undecillion", 39 => "duodecillion",
                42 => "tredecillion", 45 => "quattuordecillion", 48 => "quindecillion",
                51 => "sexdecillion", 54 => "septendecillion", 57 => "octodecillion",
                60 => "novemdecillion", 63 => "vigintillion" }

  MAX_EXPONENT = EXPONENTS.max[0]

  MAX_VALUE = 10**(MAX_EXPONENT+3)-1


  def to_english
    raise "Max value accepted is #{MAX_VALUE}" if self > MAX_VALUE
    zero_to_exponent(self, MAX_EXPONENT)
  end

  private

  def zero_to_exponent(numeral, exponent)
    range_min = (exponent == 3 ? 2000 : 10**exponent)
    if exponent == 0
      return zero_to_1999(numeral)
    elsif numeral.between?(range_min, 10**(exponent+3)-1)
      thousands = (numeral/10**exponent).floor
      thousands_word = "#{zero_to_exponent(thousands, exponent-3)} #{EXPONENTS[exponent]}"
      units = numeral - 10**exponent * thousands
      return (units == 0 ? thousands_word : "#{thousands_word} and #{zero_to_exponent(units, exponent-3)}")
    else
      return zero_to_exponent(numeral, exponent-3)
    end
  end

  def zero_to_1999(numeral)
    if numeral.between?(100, 1999)
      hundreds = (numeral/100).floor
      hundreds_word = "#{zero_to_99(hundreds)} hundred"
      units = numeral - 100 * hundreds
      return (units == 0 ? hundreds_word : "#{hundreds_word} and #{zero_to_99(units)}")
    else
      return zero_to_99(numeral)
    end
  end

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