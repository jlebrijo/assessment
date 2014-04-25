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
    it "converts 2001 to two thousand and one"
  end
end