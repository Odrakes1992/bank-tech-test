class Printer 

  HEADER  =  "date || credit || debit || balance\n"

  def full_statement(input)
    puts HEADER + input.reverse.join("\n")
  end

end 