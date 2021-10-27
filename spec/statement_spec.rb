require 'statement'

describe Statement do 

  let (:today) {Time.now.strftime("%d-%m-%Y")}

  # it 'starts with no transactions ' do 
  #   expect(subject.transactions).to be_empty
  # end 

  # it 'records deposit transactions' do 
  #   subject.deposit_transaction(50,50)
  #   expect(subject.transactions[0]).to eq("#{:today} || 50.00 || || 50.00")
  # end 


end 


# ```
# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00
# ```