class Oystercard
  MAXIMUM_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "Cannot top up the card above #{MAXIMUM_BALANCE}" unless within_limit?(money)
    @balance += money
  end

  private

  def within_limit?(money)
    @balance + money <= MAXIMUM_BALANCE
  end

end