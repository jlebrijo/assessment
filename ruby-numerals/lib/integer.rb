class Integer

  BASIC_NUMBERS = %w( one two three four five six seven eight nine ten
                        eleven twelve thirteen fourteen fifteen sixteen
                        seventeen eighteen nineteen twenty )

  def to_english

    return "zero" if self == 0

    counter = self
    if counter > 20
      return "twenty-#{BASIC_NUMBERS[counter-1-20]}"
    end
    return BASIC_NUMBERS[self-1]
  end
end