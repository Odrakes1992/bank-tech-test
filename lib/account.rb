class Account 

  def initialize
    @balance = 0 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    if monies.is_a? String 
      integer = monies.to_i
      @balance += integer
    else 
      @balance += monies
    end
  end

  def withdraw(monies)
    if monies.is_a? String 
      integer = monies.to_i
      @balance -= integer
    else
      @balance -= monies
    end
  end 

end 