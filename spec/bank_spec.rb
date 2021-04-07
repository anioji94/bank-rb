require 'bank'

describe Bank do
	describe '#print' do
		context 'when no withdrawals or deposits have been made' do
			it 'should print an empty statement' do
				expect{ subject.print }.to output("date || credit || debit || balance\n ||  ||  || 0.00 \n").to_stdout
			end
		end
	end

	describe '#deposit' do
		it 'should change the balance of the account' do
			expect{ subject.deposit(200) }.to change{ subject.balance }.by(200)
		end
	end
end