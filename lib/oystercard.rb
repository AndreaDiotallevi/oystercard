class Oystercard
  MAXIMUM_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "Cannot top up the card above #{MAXIMUM_BALANCE}" if above_max?(money)
    @balance += money
  end

  def deduct(money)
    fail "You do not have enough money!" if below_min?(money)
    @balance -= money
  end

  private

  def above_max?(money)
    @balance + money >= MAXIMUM_BALANCE
  end

  def below_min?(money)
    @balance - money < 0
  end

end