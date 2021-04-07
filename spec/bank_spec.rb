require 'bank'

describe Bank do
	describe '#print' do
		context 'when no withdrawals or deposits have been made' do
			it 'should print an empty statement' do
				expect{ subject.print }.to output("date || credit || debit || balance\n ||  ||  || 0 \n").to_stdout
			end
		end
	end
end