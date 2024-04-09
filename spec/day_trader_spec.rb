require_relative '../../day_02/lib/day_trader.rb'

describe "what day_trader does" do
  it "should return the best day to buy and best to sell to maximize profit" do
    expect(day_trader([7, 18, 3, 4, 17, 9, 6])).to eq ([2, 4])
  end
end

describe "what day_trader does" do
  it "should return nil if there isn't a best day to sell or buy" do
    expect(day_trader([19, 7, 7, 7, 7, 7, 7])).to eq (nil)
  end
end