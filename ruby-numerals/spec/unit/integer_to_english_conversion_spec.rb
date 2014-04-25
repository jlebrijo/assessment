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




  it "converts 1999 to nineteen hundred and ninety-nine"
  it "converts 2001 to two thousand and one"
end