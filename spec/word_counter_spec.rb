require_relative '../../day_02/lib/word_counter.rb'

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


describe "what does word_counter do" do
  it "should return a hash with the word and how many times it is in the dictionnary" do
    expect(word_counter(["below"], dictionnary)).to eq ({"below" => 1})
    expect(word_counter(["below", "it", "going", "partner"], dictionnary)).to eq({"below" => 1, "it" => 1, "going" => 1, "partner" => 1})
  end
end