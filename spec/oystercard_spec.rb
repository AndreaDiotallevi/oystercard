require "oystercard"

describe Oystercard do

  let(:oystercard) { Oystercard.new }

  describe "#balance" do
    it "returns 0 for a new card" do
      expect(oystercard.balance).to eq 0
    end
  end

  describe "#top_up" do
    it "adds 20 to balance" do
      oystercard.top_up(20)
      expect(oystercard.balance).to eq 20
    end
  end

end