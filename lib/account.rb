require './lib/statement'

class Account 

  def initialize
    @balance = 0 
    @statement  = Statement.new 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    is_a_string(monies)
    @balance += monies
    @statement.credit_transaction(monies,@balance)
  end

  def withdraw(monies)
    is_a_string(monies) || is_a_negative_number(monies) || not_enough_funds(monies) 
    @balance -= monies
    @statement.debit_transaction(monies,@balance)
  end 

  def print_statement
    @statement.print_statement
  end 

  private 

  def is_a_string(input)
    fail "You have not entered any integers, how about we try again" if input.is_a? String
  end 

  def is_a_negative_number(input)
    fail "Please try again and use a positive number" if input < 0  
  end

  def not_enough_funds(input)
    fail "Unfortunately you only have #{show_balance} in your account" if input > @balance
  end

end 