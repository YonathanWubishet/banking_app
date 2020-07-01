# banking_app

This app is a simple Banking app to showcase Object Oriented Principles.

To launch the app, on your terminal, enter 'ruby atm.rb'.

There are three classes, ATM, Account and User, each in a different file.

ATM
The ATM class displays a menu and is used as an interface between a user and their account.

It'll have the following methods:
- greeting
- menu()
- check balance(user, account_name)
- withdraw(user,account_name)
- deposit(user, account_name)
- createAccount(user, account_name)

User
The User class contains all the user's information such as last_name, first_name and pin number.

Account
The Account class ontains account information such as account_name and balance.

There are 4 Files all together. One class will be our 'Main', where our classes will work together.

