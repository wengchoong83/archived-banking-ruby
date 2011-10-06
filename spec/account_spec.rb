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

  specify "should be only positive deposits " do
    account = Account.new 10.0
    expect{account.deposit(-10)}.should raise_error
  end

  it "should substract the withdrawal amount from the balance" do
    account = Account.new 100.0
    account.withdraw 20.0
    account.balance.should == 80.0
  end

  specify "should be only positive withdrawals" do
    account = Account.new 10.0
    expect{account.withdraw(-10)}.should raise_error
  end

  specify "transfer money from one account to another" do
    account_origin = Account.new 100.0
    account_destination = Account.new 0.0
    account_origin.transfer_to account_destination, 10
    account_origin.balance.should == 90
    account_destination.balance.should == 10
  end
end