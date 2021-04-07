class Bank
	attr_reader :balance
	def initialize
		@balance = 0.00
		@dep_amount = ""
		@with_amount = ""

	end

	def print
		puts "date || credit || debit || balance"
		puts " || #{@dep_amount} || #{@with_amount} || #{sprintf "%.2f", @balance} "
	end

	def deposit(amount)
		@with_amount = ""
		@balance += amount.to_f
		@dep_amount = sprintf "%.2f", amount
	end

	def withdraw(amount)
		@dep_amount = ""
		@balance -= amount.to_f
		@with_amount = sprintf "%.2f", amount
	end

end