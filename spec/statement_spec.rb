require 'statement'

describe Statement do 

  let (:today) {Time.now.strftime("%d-%m-%Y")}

  it 'starts with no transactions ' do 
    expect(subject.transactions).to be_empty
  end 

  it 'records deposit transactions' do 
    subject.credit_transaction(50,50)
    expect(subject.transactions[0]).to eq("#{today} || 50.00 || || 50.00")
  end 

  it 'records withdrawal transactions' do 
    subject.credit_transaction(5500,5500)
    subject.debit_transaction(500,5000)
    expect(subject.transactions[1]).to eq("#{today} || || 500.00 || 5000.00")
  end 

 
end 
