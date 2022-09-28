import UIKit

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
} while input < 0
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
//Step 4: Display account type
print("You have opened a \(accountType) account.")
