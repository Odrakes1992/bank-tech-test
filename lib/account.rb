class Account 

  def initialize
    @balance = 0 
  end 

  def show_balance
    @balance
  end 


  def deposit(monies)
    fail "You have entered an incorrect key, how about we try again" if contains_letters(monies)
      integer = monies.to_i
      @balance += integer
  end

  def withdraw(monies)
    fail "You have entered an incorrect key, how about we try again" if contains_letters(monies)
      integer = monies.to_i
      @balance -= integer
  end 

  private 
  

  def contains_letters(input)
    if input.is_a? Integer 
      return false 
    else 
      lowercase = ('a'..'z')
      uppercase = ('A'..'Z')
      input.each_char.any?{ |char| lowercase.cover?(char) || uppercase.cover?(char) }
    end
  end 

end 