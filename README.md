# Bank Tech Test in Ruby

## What does this program do?
This program is a basic command line banking app that will help you keep on top of your finances!
Here is what a common output would look like:
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
As you can see from the above output, the client has deposited 1000 pounds on the 10th of Jan 2012.
Then three days later, a further 2000 pounds was deposited.
On the 14th, a 500 pound withdrawal was made leaving 2500 in the account.
This program is a way to track deposits and withdrawals alongside the date of each action!


## How to use this program
1. Make sure you have Ruby installed on your computer!
2. Open up your terminal and type in the following to confirm:
```
$ ruby -v
#=> 'Ruby 3.0.0' 
```
3. Git clone this repo!
4. In the same directory as the repo, make sure you run the following:
```
irb -r './lib/bank.rb'
```
5. Initalise a new instance of your bank
```
my_bank = Bank.new
```
6. Make a deposit or a withdrawal (the overdraft limit is infinite!)
```
my_bank.deposit(1000)
my_bank.withdraw(50)
```
7. Print your statement to check on your finances!
```
my_bank.print_statement 
#=>
date || credit || debit || balance
7/7/2021 ||  || 50.00 || 950.00
7/7/2021 || 1000.00 ||  || 1000.00
```
That's it! Take a look at the User Stories below to see how I planned this program.


## User Stories 
```
As a Client
I'd like to be able to make deposits
So that I store money

As a Client
I'd like to be able to make withdrawals
So that I can spend money

As a Client
I'd like to be able to print my statement
So that I can keep track of my spending

As a Client
I'd like the date of my withdrawals and deposits to be stored
So that I can keep track of my spending
```


