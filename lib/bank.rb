class Bank
	attr_reader :balance
	def initialize
		@balance = 0.00
		@dep_amount = ""

	end

	def print
		puts "date || credit || debit || balance"
		puts " || #{@dep_amount} ||  || #{sprintf "%.2f", @balance} "
	end

	def deposit(amount)
		@balance += amount.to_f
		@dep_amount = sprintf "%.2f", amount
	end

	def withdraw(amount)
		@balance -= amount.to_f
	end

end