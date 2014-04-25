class Integer

  UNITS = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
      7 => "seven", 8 => "eight", 9 => "nine"}

  TEENS = { 10 => "ten", 11 => "eleven", 12 => "twelve",
      13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
      18 => "eighteen", 19 => "nineteen"}

  def to_english

    if self >= 30
      units = self-30
      return "thirty-#{UNITS[units]}" if units > 0
      return "thirty"
    end
    if self >= 20
      units = self-20
      return "twenty-#{UNITS[units]}" if units > 0
      return "twenty"
    end
    return UNITS[self] || TEENS[self]
  end
end