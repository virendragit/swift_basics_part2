/* This playground contains explanation and code for the below topics in Swift 5.1
1.Optional binding
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


