import UIKit
//PART 1
//Step 1: Start the virtual bank system interface

print("Welcome to your virtual bank system. What kind of account would you like to make?")
print("1. Debit account")
print("2. Credit account")
print("3. Bank account")

//Step 2: Create variables for the bank account type and user input

var accountType = ""
var input = 0

//Step 3: Create the bank account based on user input
repeat {
    print("Which option do you choose? (1,2 or 3)")
    input = Int.random(in: 1...5)
    
    print("The selected option is \(input)")

    switch input{
    case 1:
        accountType = "debit"
    case 2:
        accountType = "credit"
    case 3:
        accountType = "generic"
    default:
        break
    }
} while accountType == ""

//Step 4: Display account type
print("You have opened a \(accountType) account.")

//PART 2
//S​tep 1: Create the balance variable
var balance = 100

//Step2: Create a func to get the balance.
func getBalanceInfo () -> String{
    return "Current balance: R$\(balance)"
}
getBalanceInfo()

//Step 3: Implement the withdrawal operation for generic and credit bank accounts

func withdraw(_ amount: Int) {
    balance -= amount
    print("Withdrew: R$\(amount). \(getBalanceInfo())")
    
}
//Step 4: Test the withdrawal operation
withdraw(20)

//Step 5: Implement the withdrawal operation for debit accounts
func debitWithdraw(_ amount: Int){
    if amount > balance{
            print("Insufficient fund to withdraw R$\(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}

//Step 6: Test the withdrawal operation
debitWithdraw(81)
debitWithdraw(80)

//Step 7: Implement the deposit operation for generic and debit accounts
func deposit(_ amount: Int){
    if ((balance + amount) != 0) {
        balance += amount
        print("Deposited R$\(amount). \(getBalanceInfo())")
    }
}

//Step 8: Test the deposit operation for generic and debit accounts
deposit(100)

//Step 9: Implement the deposit operation for credit accounts
func creditDeposit(_ amount: Int){
    deposit(amount)
    if balance == 0 {
        print("Paid off account balance.")
    } else if balance > 0{
        print("Overpaid account balance.")
    }
}

//Step 10: Test the deposit operation.
withdraw(200)
creditDeposit(50)
creditDeposit(50)
creditDeposit(100)
