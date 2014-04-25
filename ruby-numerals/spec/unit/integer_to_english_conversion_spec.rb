require 'spec_helper'
require_relative '../../lib/integer'

describe "Integer to English conversion" do
  it "converts 0 to zero"do
    0.to_english.should == "zero"
  end
  it "converts 1 to one"do
    1.to_english.should == "one"
  end
  it "converts 7 to seven"do
    7.to_english.should == "seven"
  end
  it "converts 19 to nineteen"do
    19.to_english.should == "nineteen"
  end
  it "converts 20 to twenty" do
    20.to_english.should == "twenty"
  end
  it "converts 21 to twenty-one" do
    21.to_english.should == "twenty-one"
  end
  it "converts 30 to thirty" do
    30.to_english.should == "thirty"
  end
  it "converts 31 to thirty-one" do
    31.to_english.should == "thirty-one"
  end
  it "converts 42 to forty-two" do
    42.to_english.should == "forty-two"
  end
  it "converts 99 to ninety-nine" do
    99.to_english.should == "ninety-nine"
  end


  it "converts 1999 to nineteen hundred and ninety-nine"
  it "converts 2001 to two thousand and one"
end