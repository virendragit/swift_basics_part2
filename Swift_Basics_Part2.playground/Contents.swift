/* This playground contains explanation and code for the below topics in Swift 5.1
 1.Optional binding
 2.Error Handling
 3.Assertion and Preconditions
 */

import UIKit

//Optional Binding
/* We use optional biniding to find out whether an optional contains a value ,and if so, to make that value available as temporary constant or variable*/

let possibleNumber = "123"

if let actualNumber = Int(possibleNumber){
    
    print("This string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
    
}else{
    print("The string \" \(possibleNumber)\" could not be converted to Integer")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    
    print("\(firstNumber) < \(secondNumber) < 100")
    
}


if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber &&
            secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string"
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}


if let definedString = assumedString{
    print(definedString)
}

//Error Handling

//run time

func makeSandwich() throws {
    // ..
    
}

do {
    try makeSandwich()
    eatASandwich()
    
} catch SandwichError.outOfCleanDishes{
    washDishes()
} catch SanwichError.missingIngredients(let ingredients){
    buyGroceries(ingredients)
}


//func eatASandwich() {
////    print(<#T##items: Any...##Any#>)
//}
//
//func washDish(){
//
//}
//
//func buyGroceries(ingredients){
//
//}

//Assertions and Preconditions.

/* Assertions and precondition used to express the assumption you make and the
 expectation you have while coding.
 
 Assertion help you find mistakes and incorrect assumptions during development,
 and preconditions help you detect issue in production
 
 Assertion and precondition aren't used for recoverable or expected errors.
 
 The difference between assertions and precondition is in when they're checked:
 Assertions are checked only in debug builds, but precondition are checked in both
 debug and production builds.
 
 In Production builds, the condition inside an assertion isn't evaluated,This means
 you can use as many assertions as you want during your development process.without impacting performance in production.
 
 */

/* Debugging with Assertions*/

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

//This assertion fails because -3 is not >= 0.

// if the code already checks the condion , you use the assetionFailure function to indicate that an assetion has failed.

if age > 10{
    print("you can ride the roller-coaster")
}
else if age >= 0{
    print ("you can ride the feeris wheel.")
}
else{
    assertionFailure("A person's age can't be less than zero.")
}

//Enforcing Preconditions.

precondition(index > 0, "Index must be greater than zero.")

