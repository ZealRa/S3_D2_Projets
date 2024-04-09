require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(121)).to eq(false)
    expect(is_multiple_of_3_or_5?(253)).to eq(false)
    expect(is_multiple_of_3_or_5?(436)).to eq(false)
    expect(is_multiple_of_3_or_5?(589)).to eq(false)
  end
end

describe "sum_of_3_or_5_multiples method" do
  it "should return the sum of the multiples of 3 or 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end
end
describe "sum_of_3_or_5_multiples method" do
  it "should return an error if the number given is not valid" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Chiffre invalide")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Chiffre invalide")
  end
end