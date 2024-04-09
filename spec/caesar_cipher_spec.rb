require_relative '../lib/caesar_cipher.rb' 

describe "what does caesar_cipher" do
  it "should shift the string into another, 5 later" do
    expect(caesar_cipher('a')).to eq('f')
    expect(caesar_cipher("message")).to eq ('rjxxflj')
    expect(caesar_cipher("Hello World")).to eq ('Mjqqt Btwqi')
  end
end