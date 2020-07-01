class User < Bank
    def user(account_name, pin)
        puts "Please enter your first name"
        f_name = gets.chomp
        puts "Please enter your last name"
        l_name = gets.chomp
        user = f_name + ' ' + l_name
        ATM.new.menu(user, account_name)
    end
end