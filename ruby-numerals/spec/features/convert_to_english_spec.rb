require 'spec_helper'

feature "Integer to English conversion" do
  scenario "/to_english converts a number into an english phrase" do
    visit to_english_path
    fill_in "Number", 184304
    click_on "Convert"

    expect(find('#result')).to eq("one hundred and eighty-four thousand and three hundred and four")
  end
end