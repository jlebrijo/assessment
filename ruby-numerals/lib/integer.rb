class Integer

  BASIC_NUMBERS = %w( zero one two three four five six seven eight nine ten
                        eleven twelve thirteen fourteen fifteen sixteen
                        seventeen eighteen nineteen )

  def to_english
    return BASIC_NUMBERS[self]
  end
end