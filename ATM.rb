require 'colorize'
require './Main'
require './Account'
require './User'

class ATM < Bank
    def greetings
        4.times do
            puts "*****************************".center(56).green
          end
          1.times do
            puts "ZBank's Banking Services\n".center(56).yellow
          end
          4.times do
            puts "*****************************".center(56).red
          end
        puts "Welcome to ZBank's Banking Services:\n"
        Account.new.account
    end
    def menu(user, account_name)
        puts "#{user}, Here are the available services for #{account_name} accounts.\nPlease enter the corresponding letters for the services.\n
        To create an account, enter 'c'.\n
        To check Your Balance, enter 'b'.\n
        For deposit, enter 'd'.\n
        For withdrawal, enter 'w'.\n"
        selection = gets.chomp
        if selection == "d"
            deposit(user, account_name)
        elsif selection == 'w'
            withdraw(user, account_name)
        elsif selection == 'b'
            check_balance(user, account_name)
        else
            create_account(user, account_name)
        end
    end
    def check_balance(user, account_name)
        puts "Your balance is $#{@balance}"
        puts "Enter d for deposit, w for withdrawal or c to create another account. Enter 'e' to exit"
        answer = gets.chomp
        if answer == "d"
            deposit(user,account_name)
        elsif answer == "w"
            withdraw(user, account_name)
        elsif answer == "c"
            create_account(user, account_name)
        else
            puts "Thank you for using ZBank's Banking Services. Goodbye!"
        end
    end
    def deposit(user, account_name)
        puts "How much would you like to deposit?"
        deposit = gets.chomp.to_i
        @new_balance = @balance + deposit
        Bank.new(@new_balance)
        puts "Your have deposited $#{deposit}.\nYour current balance is $#{@new_balance}"
        puts "Enter d if you would like to deposit again, w for withdrawal or c to create another account. Enter e to exit."
        answer = gets.chomp
        if answer == "d"
            deposit(user,account_name)
        elsif answer == "w"
            withdraw(user, account_name)
        elsif answer == "c"
            create_account(user, account_name)
        else
            puts "Thank you for using ZBank's Banking Services. Goodbye!"
        end
    end
    def withdraw(user, account_name)
        puts "#{user}, How much would you like to withdraw?"
        withdrawal = gets.chomp.to_i
        @new_balance = @balance - withdrawal
        Bank.new(@new_balance)
        puts "Your have withdrawn $#{withdrawal}.\nYour current balance is $#{@new_balance}"
        puts "Enter d if you would like to deposit, w for withdrawal or c to create another account. Enter 'e' to exit."
        answer = gets.chomp
        if answer == "d"
            deposit(user,account_name)
        elsif answer == "w"
            withdraw(user, account_name)
        elsif answer == "c"
            create_account(user, account_name)
        else
            puts "Thank you for using ZBank's Banking Services. Goodbye!"
        end
    end
    def create_account(user, account_name)
        puts "How much would you like to deposit to your new #{account_name} account?"
        deposit = gets.chomp.to_i
        @new_balance = @balance + deposit
        Bank.new(@new_balance)
        puts "Your new #{account_name} account is ready for use.\nYour have deposited $#{deposit}.\nYour current balance is $#{@new_balance}"
        puts "Enter d if you would like to deposit again, w for withdrawal or c to create another account. Enter e to exit."
        answer = gets.chomp
        if answer == "d"
            deposit(user,account_name)
        elsif answer == "w"
            withdraw(user, account_name)
        elsif answer == "c"
            create_account(user, account_name)
        else
            puts "Thank you for using ZBank's Banking Services. Goodbye!"
        end
    end
end

transaction = ATM.new
transaction.greetings