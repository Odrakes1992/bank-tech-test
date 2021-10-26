require 'account'

describe Account do 

  it {is_expected.to respond_to(:show_balance)}

  it 'shows the current balance' do 
    expect(subject.show_balance).to eq 0 
  end 

  it 'allows account holder to desposit monies' do 
    subject.deposit(100)
    expect(subject.show_balance).to eq 100
  end 

  it 'allows account holder to withdraw funds' do 
    subject.deposit(1000)
    subject.withdraw(500)
    expect(subject.show_balance).to eq 500
  end 


  describe 'test for use cases / errors ' do 
    it 'should accept string as entries' do 

    end 

    it 'should show error if withdrawal/deposit is not numerical string or integer'
  end 

end 