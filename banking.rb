class Person
	attr_reader :name
	attr_accessor :cash
	def initialize(name,cash)
		@name = name
		@cash = cash
		puts "Hi #{name}. You have $#{cash}!"
	end
end

class Bank
	attr_reader :bank_name
	attr_accessor :bank_accounts
	def initialize(bank_name)
		@bank_name = bank_name
		@bank_accounts = {}
		puts "#{@bank_name} was just created."
	end

	def open_account(user)
		@bank_accounts[user.name] = 0
		puts "#{user.name}, thanks for opening an account at #{@bank_name}!"
	end
	
	def deposit(user,amount)
		if amount < user.cash
			@bank_accounts[user.name] += amount
			user.cash -= amount
			puts "#{user.name} deposited $#{amount} to #{@bank_name}. #{user.name} has $#{user.cash}."
		else
			puts "#{user.name} does not have enough cash to deposit $#{amount}."
		end
	end

	def withdraw(user,amount)
		if amount < @bank_accounts[user.name]
			@bank_accounts[user.name] -= amount
			user.cash += amount
			puts "#{user.name} withdrew $#{amount} from #{@bank_name}. #{user.name} has $#{user.cash}."
		else
			puts "#{user.name} does not have enough money in the account to withdraw $#{amount}."
		end
	end

	def transfer(user,to_bank,amount)
		@bank_accounts[user.name] -= amount
		to_bank.bank_accounts[user.name] += amount
		puts "#{user.name} transferred $#{amount} from the #{@bank_name} account to the #{to_bank.bank_name} account. #{user.name} has $#{@bank_accounts[user.name]}."
	end

	def show_balance(user)
		puts "#{user.name}, your balance at #{@bank_name} is $#{@bank_accounts[user.name]}."
	end

	def total_cash_in_bank() #Not sure why this isn't working
		sum = 0
		i = 0
		puts "sum is: #{sum}"
		puts "@bank_accounts[i] is: #{@bank_accounts[i]}"
		p @bank_accounts
		@bank_accounts.each { |x,y| sum += y }

		puts "#{@bank_name} has #{sum} in the bank."
	end

	def show_accounts()
		puts @bank_accounts
	end

end

chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Shehzan", 500)
friend1 = Person.new("John", 1000)
chase.open_account(me)
chase.show_balance(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)
chase.deposit(me, 200)
chase.deposit(friend1, 300)
chase.withdraw(me, 50)
chase.transfer(me, wells_fargo, 100)
chase.deposit(me, 5000)
chase.withdraw(me, 5000)

puts chase.total_cash_in_bank
puts wells_fargo.total_cash_in_bank