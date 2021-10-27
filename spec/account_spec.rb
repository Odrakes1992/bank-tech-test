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


  describe 'test for edge cases / errors' do 

    it 'should show error if withdrawal/deposit is not an integer/float' do 
      message = "You have not entered any integers, how about we try again"
      expect{subject.deposit("eryt")}.to raise_error(message)
    end 

    it 'should not allow negative inputs for withdrawals' do 
      message = "Please try again and use a positive number"
      expect{subject.withdraw(-500)}.to raise_error(message)
    end 

    it 'should not allow to withdraw if funds will go below zero' do 
      subject.deposit(100)
      message = "Unfortunately you only have #{subject.show_balance} in your account"
      expect{subject.withdraw(200)}.to raise_error(message)

    end 
  end 

end 