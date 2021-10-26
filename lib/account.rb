class Account 

  def initialize
    @balance = 0 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    @balance += monies
  end

  def withdraw(monies)
    @balance -= monies
  end 

end 