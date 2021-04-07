require 'bank'

describe Bank do
	describe '#print' do
		context 'when no withdrawals or deposits have been made' do
			it 'should print an empty statement' do
				expect{ subject.print }.to output("date || credit || debit || balance\n ||  ||  || 0.00 \n").to_stdout
			end
		end
		
		context'when a deposit is made' do
			it 'should store deposit amount' do
				subject.deposit(200)
				expect{ subject.print }.to output("date || credit || debit || balance\n || 200.00 ||  || 200.00 \n").to_stdout
			end
		end

		context'when a withdrawal is made' do
			it 'should store withdrawal amount' do
				subject.deposit(200)
				subject.withdraw(10)
				expect{ subject.print }.to output("date || credit || debit || balance\n ||  || 10.00 || 190.00 \n").to_stdout
			end
		end
	end

	describe '#deposit' do
		it 'should increase the balance of the account by 200' do
			expect{ subject.deposit(200) }.to change{ subject.balance }.by(200)
		end
	end

	describe '#withdraw' do
		it 'should decrease the balance of the account by 200' do
			subject.deposit(200)
			expect{ subject.withdraw(200) }.to change{ subject.balance }.by(-200)
		end
	end

	
end