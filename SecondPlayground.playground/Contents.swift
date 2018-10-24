// Constants are declared with let
let name = "Natalia"

// Variables are declared with var
var firstName = "Sammy"
firstName = "Yoko"

/* Why use constants?

 * 1. Compiler will help you
 * 2. Optimization of constants
 * 3. Showing intention
 */

// Swift variables have types
var myName: String = "Nat"
var myAge: Int = 28

// We don't explicitly need to specify it thanks to type inference
var myPetsName = "Yoko"
var myPetsAge = 11

/* Some types are:
 
 * Int
 * Double
 * Bool
 * String
 */

/* Type safety:
 * We cannot change the type of a variable
 * We cannot do mathematical operations with different types
 */

// let fruits = "banana" + 2
// let strings =  "1" + 1.5

let x: Int = 3
let y: Double = 0.14

// Compiler error
// let result = x + y

// Compiler is happy
let result = Double(x) + y

let myNumber = 2 + 4 * 6
let number: Double = 3
let emoji = "😄"

// Functions
// The list of parameters and the return type are optional.

func displayPi() {
    print(3.1415)
}

func triple(value: Int) {
    let result = value * 3
    print("\(value) times 3 is: \(result)")
}

func multiply2numbers(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

// Default parameter value
func display(score: Int = 0) {
    print(score)
}


displayPi()
triple(value: 2)
triple(value: 5)
let multiplication = multiply2numbers(num1: 3, num2: 2)
print(multiplication)


// Challenge!

// 1
func greet(name: String) -> String {
    return "Hello \(name) 😊"
}

print(greet(name: "Vasi"))


// 2
func printNameAndAge(name: String, age: Int) {
    print("\(name) is \(age) years old")
}

printNameAndAge(name: "Natalia", age: 28)


// 3
func printMyFavourite(movie: String) {
    print(movie)
}

printMyFavourite(movie: "Les Misérables")


// 4
func sumTwoNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

sumTwoNumbers(num1: 2, num2: 7)
