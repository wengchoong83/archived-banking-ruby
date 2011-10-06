# account_spec.rb

require 'rspec'
require '../lib/account.rb'

describe Account do
  it "should initially have a balance of zero" do
    account = Account.new
    account.balance.should == 0.0
  end

  it "should have a balance that is equal to the starting balance" do
    starting_balance = 100.00
    account = Account.new starting_balance
    account.balance.should == starting_balance
  end

  it "should add the deposit to the balance" do
    account = Account.new 10.0
    account.deposit 20.0
    account.balance.should == 30.0
  end

end