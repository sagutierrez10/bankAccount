require_relative 'bankAccount'
RSpec.describe BankAccount do
    before(:each) do
        @bankAccount = BankAccount.new
    end
    
    it 'has a getter method for retrieving the checking account balance' do
        expect(@bankAccount.checking).to eq(0)
    end

    it 'has a getter method to retrieve rhe total account balance' do
        expect(@bankAccount.total).to eq("Checking Balance: 0\nSaving Balance: 0\nTotal Balance: 0")
    end

    context "withdrawing cash" do
        it 'has a method to withdraw cash that will raise an error if a user tries to withdraw more that they have' do
            expect{@bankAccount.withdrawal("checking", 1)}.to raise_error(MoneyError)
        end 
    end

    it "raises an error when user attempts to retrieve the total number of accounts" do
        expect{@bank_accounts.number_of_accounts}.to raise_error(NoMethodError)
    end

    it "raises error when user attempts to set interest rate" do
        expect{@bank_accounts.interest_rate}.to raise_error(NoMethodError)
    end
end