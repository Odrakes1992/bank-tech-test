require './lib/statement'
require 'printer'

describe Printer do 

  let (:statement) {Statement.new}
  let (:today) {Time.now.strftime("%d-%m-%Y")}


  it 'should print a full statement' do 
    statement.credit_transaction(5500,5500)
    statement.debit_transaction(500,5000)
    expect{subject.full_statement(statement.transactions)}.to output(
      "date || credit || debit || balance\n#{today} || || 500.00 || 5000.00\n#{today} || 5500.00 || || 5500.00\n"
    ).to_stdout
  end 


end 