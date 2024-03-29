class Oystercard
  
  MAXIMUM_BALANCE = 90
  MIN_TICKET_PRICE = 1

  attr_reader :balance, :in_journey

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(money)
    fail "Cannot top up the card above #{MAXIMUM_BALANCE}" if above_max?(money)
    @balance += money
  end

  def deduct(money)
    fail "You do not have enough funds!" if below_min?(money)
    @balance -= money
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    fail "You do not have enough funds!" if below_min_ticket?
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

  private

  def above_max?(money)
    @balance + money >= MAXIMUM_BALANCE
  end

  def below_min?(money)
    @balance - money < 0
  end

  def below_min_ticket?
    @balance < MIN_TICKET_PRICE
  end



end