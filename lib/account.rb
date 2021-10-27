class Account 

  def initialize
    @balance = 0 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    fail "You have not entered any integers, how about we try again" if monies.is_a? String
      @balance += monies
  end

  def withdraw(monies)
    fail "You have not entered any integers, how about we try again" if monies.is_a? String
    fail "Please try again and use a positive number" if monies < 0   
      @balance -= monies
  end 


end 