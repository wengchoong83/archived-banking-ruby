class Account

  attr_reader :balance

  def initialize starting_balance = 0
    @balance = starting_balance
  end

  def deposit deposit_amount
    if deposit_amount <= 0
      raise Exception.new "Invalid deposit"
    end
    @balance += deposit_amount
  end

  def withdraw amount
    if amount <= 0
      raise Exception.new "Invalid withdrawal"
    end
    @balance -= amount
  end
end