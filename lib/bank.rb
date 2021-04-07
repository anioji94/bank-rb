class Bank
	attr_reader :balance
	def initialize
		@balance = 0
	end

	def print
		puts "date || credit || debit || balance"
		puts " ||  ||  || #{@balance} "
	end
end
