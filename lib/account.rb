require './lib/statement'

attr_reader :statement

class Account 

  def initialize
    @balance = 0 
    @statement  = Statement.new 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    fail "You have not entered any integers, how about we try again" if monies.is_a? String
      @balance += monies
      @statement.credit_transaction(monies,@balance)
  end

  def withdraw(monies)
    fail "You have not entered any integers, how about we try again" if monies.is_a? String
    fail "Please try again and use a positive number" if monies < 0   
      @balance -= monies
      @statement.debit_transaction(monies,@balance)
  end 


end 