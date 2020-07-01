class Account < Bank
    def account
        puts "What kind of account do you need assitance with, today?\n\nEnter 'c' for checking or 's' for savings:"
            choice = gets.chomp
            if choice == 'c'
                account_name = "checking"
            else
                account_name = "savings"
            end
            puts "Please either create a new pin or enter your existing pin below:"
            pin = gets.chomp
            puts "Please re-enter your PIN:"
            pin = gets.chomp
            User.new.user(account_name, pin)
    end
end