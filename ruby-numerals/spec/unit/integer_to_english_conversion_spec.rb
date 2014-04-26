require 'spec_helper'
require_relative '../../lib/integer'

describe "Integer to English conversion" do
  describe "Units" do
    it { 0.to_english.should == "zero" }
    it { 1.to_english.should == "one" }
    it { 7.to_english.should == "seven" }
  end

  describe "Tens" do
    it { 19.to_english.should == "nineteen" }
    it { 20.to_english.should == "twenty" }
    it { 21.to_english.should == "twenty-one" }
    it { 30.to_english.should == "thirty" }
    it { 31.to_english.should == "thirty-one" }
    it { 42.to_english.should == "forty-two" }
    it { 99.to_english.should == "ninety-nine" }
  end

  describe "Hundreds" do
    it { 100.to_english.should == "one hundred" }
    it { 101.to_english.should == "one hundred and one" }
    it { 1999.to_english.should == "nineteen hundred and ninety-nine" }
  end

  describe "Thousands" do
    it { 2000.to_english.should == "two thousand" }
    it { 2001.to_english.should == "two thousand and one" }
    it { 999_999.to_english.should == "nine hundred and ninety-nine thousand and nine hundred and ninety-nine" }
  end

  describe "Millions" do
    it { 1_000_000.to_english.should == "one million"}
    it { 3_000_015.to_english.should == "three million and fifteen"}
    it { 789_347_001.to_english.should == "seven hundred and eighty-nine million and three hundred and forty-seven thousand and one"}
  end

  describe "Billions" do
    it { 1_000_000_000.to_english.should == "one billion"}
    it { 3_000_000_015.to_english.should == "three billion and fifteen"}
    it { 789_347_897_001.to_english.should == "seven hundred and eighty-nine billion and three hundred and forty-seven million and eight hundred and ninety-seven thousand and one"}
  end

  describe "Large numbers" do
    it { (10**24).to_english.should == "one septillion"}
    it { (10**42+43).to_english.should == "one tredecillion and forty-three"}
    it { 789_000_000_000_000_000_000_001.to_english.should == "seven hundred and eighty-nine sextillion and one" }
    it { 789_347_897_001_789_347_897_001.to_english.should == "seven hundred and eighty-nine sextillion and three hundred and forty-seven quintillion and eight hundred and ninety-seven quadrillion and one trillion and seven hundred and eighty-nine billion and three hundred and forty-seven million and eight hundred and ninety-seven thousand and one" }
  end

  it "raises an exception if maximum value overflows" do
    expect{(Integer::MAX_VALUE + 1).to_english}.to raise_error(RuntimeError, "Max value accepted is #{Integer::MAX_VALUE}")
  end
end