require 'account'

describe Account do 

  it {is_expected.to respond_to(:show_balance)}

  it 'shows the current balance' do 
    expect(subject.show_balance).to eq 0 
  end 

end 