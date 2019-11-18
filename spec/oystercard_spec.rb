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

    it "raises an error if you try to top_up above 90" do
      maximum_balance = Oystercard::MAXIMUM_BALANCE
      message = "Cannot top up the card above #{maximum_balance}"
      expect { oystercard.top_up(maximum_balance + 1) }.to raise_error(message)
    end
  end

  describe "#deduct" do
    it "deducts 10 from balance when balance 20" do
      oystercard.top_up(20)
      oystercard.deduct(10)
      expect(oystercard.balance).to eq 10
    end

    it "raises an error if you try to deduct more than your balance" do
      message = "You do not have enough money!"
      expect { oystercard.deduct(10) }.to raise_error(message)
    end
  end

end