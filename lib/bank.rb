class Bank
	attr_reader :balance, :dep_amount, :with_amount, :history
	def initialize
		@balance = 0.00
		@dep_amount = ""
		@with_amount = ""
		@history = []
		@statement = ""
		@time = "#{Time.now.day}/#{Time.now.month}/#{Time.now.year}"
		save
	end

	def print_statement
		write_statement
		puts "date || credit || debit || balance\n" + @statement
		@statement = ""
	end

	def deposit(amount)
		@balance += amount.to_f
		@dep_amount = sprintf "%.2f", amount
		save(@dep_amount, "", @balance)
	end

	def withdraw(amount)
		@dep_amount = ""
		@balance -= amount.to_f
		@with_amount = sprintf "%.2f", amount
		save("", @with_amount, @balance)
	end

private 

	def save(dep_amount = "", with_amount = "", balance = @balance, time = @time)
		transaction = " #{time} || #{dep_amount} || #{with_amount} || #{sprintf "%.2f", balance} "
		@history << transaction
	end

	def write_statement
		@history.each do |transaction|
			@statement += "#{transaction}\n"
		end
	end

	
		
	
end