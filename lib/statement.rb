class Statement 

  attr_reader :transactions


  def initialize 
    @transactions = []
    @current_time = Time.now.strftime("%d-%m-%Y")
  end 


  def deposit_transaction(amount,balance)

    transaction = "#{@current_time} || #{format_transaction(amount)} || || #{format_transaction(balance)}"
    @transactions << transaction
  end 



  private 

  def format_transaction(amount)
    format('%.2f', amount)
  end 


  def format_statement

  end 

end 