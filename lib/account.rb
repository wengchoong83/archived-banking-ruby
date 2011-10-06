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

  def transfer_to account_destination, amount
    @balance -= amount
    account_destination.deposit amount
  end

  def transfer amount
    Transfer.new self, amount
  end
end

class Transfer
  def initialize source_account, amount
    @source_account = source_account
    @amount = amount
  end
  def to destination_account
    @source_account.withdraw @amount
    destination_account.deposit @amount
  end
end