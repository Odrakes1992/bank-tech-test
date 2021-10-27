# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Self-assessment

Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit



# Installation instructions 

- clone repo 

```
https://github.com/Odrakes1992/bank-tech-test.git
```
- install dependencies

```
cd bank-tech-test
bundle install
```

- run the full test suite 
```
rspec
```

# Instructions for use 

Initiate IRB 

Load the file `./lib/account` and create a new Account class

```
3.0.0 :001 > require './lib/account'
 => true
3.0.0 :002 > account = Account.new
 =>
#<Account:0x00007ff444169348
  @balance=0, @statement=#<Statement:0x00007...  
```

```
3.0.0 :003 > account.deposit(100)
3.0.0 :004 > account.deposit(90000)
3.0.0 :005 > account.print_statement
date || credit || debit || balance
27-10-2021 || 90000.00 || || 90100.00
27-10-2021 || 100.00 || || 100.00
```


# User stories 

```
As a client
So that I can see how much money I have in my account 
I would like to see my bank balance 
```

```
As a client 
So that I can see how much 
I would like to be able to add money to my bank account 
```

```
As a client 
So that I can see how much 
I would to withdraw funds from my bank account 
```

```
As a client 
So that I can see my bank account transaction s
I would like to print a bank statement. 
```



```
INPUT TABLE || OUTPUT TABLE 

.show_balance || Current Date - 0.00 - 0.00 
deposit(500) & show_balance || Current Date - 500.00 - 500.00
withdraw(100)  & show_balance || Current Date - (100.00)  - 400.00
print_bank_statement || See Table Below 

date || credit || debit || balance
14/01/2023 || || 100.00 || 400.00
13/01/2023 || 500.00 || || 500.00

```
