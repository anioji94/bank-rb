class Bank
	attr_reader :balance
	def initialize
		@balance = 0.00
	end

	def print
		puts "date || credit || debit || balance"
		puts " ||  ||  || #{sprintf "%.2f", @balance} "
	end

	def deposit(amount)
	 @balance += amount.to_f
	end
end
