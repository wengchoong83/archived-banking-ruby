class Account

  attr_reader :balance

  def initialize starting_balance = 0
    @balance = starting_balance
  end

  def deposit deposit_amount
    @balance += deposit_amount
  end

end