require "oystercard"

describe Oystercard do

  describe "#balance" do
    it "returns 0 for a new card" do
      oystercard = Oystercard.new
      expect(oystercard.balance).to eq 0
    end
  end

end