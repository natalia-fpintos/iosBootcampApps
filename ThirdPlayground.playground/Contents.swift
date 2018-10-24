// Booleans & if statements

let isSunny = true
let isRainy: Bool = false
let favAnimal = "cat"

if isSunny {
    print("It's sunny today! ☀️")
}

if !isRainy {
    print("It's not raining today 🌧")
} else {
    print("It's rainy, take an umbrella! ☔️")
}

if favAnimal == "dog" {
    print("🐕")
} else if favAnimal == "cat"  {
    print("🐈")
} else {
    print("?")
}

let finishPosition = 2

if finishPosition == 1 {
    print("🥇")
} else if finishPosition == 2 {
    print("🥈")
} else if finishPosition == 3 {
    print("🥉")
} else {
    print("🎖")
}


// String type methods & properties

let emptyString = ""

if emptyString.isEmpty {
    print("This string is empty! 😳")
}


// String comparison

let stringOne = "Hi"
let stringTwo = "Hi"
let stringThree = "hi"

if (stringOne == stringTwo) {
    print("These are the same!: \(stringOne) vs \(stringTwo)")
}

if (stringTwo != stringThree) {
    print("These are not the same!: \(stringTwo) vs \(stringThree)")
}

if (stringTwo.lowercased() == stringThree) {
    print("Now we are both the same in lowercase!: \(stringTwo.lowercased()) vs \(stringThree)")
}

if (stringTwo.uppercased() == stringThree.uppercased()) {
    print("Now we are both the same in uppercase!: \(stringTwo.uppercased()) vs \(stringThree.uppercased())")
}


// Checking for substrings

let helloWorld = "Hello, world!"

let prefix = helloWorld.hasPrefix("Hello")
print("This is \(prefix)! starts with 'Hello'")

let suffix = helloWorld.hasSuffix("!")
print("This is \(suffix)! ends with '!'")

let contains = helloWorld.contains(",")
print("This is \(contains)! contains a comma")


// Challenge!

// 1

func areTheSame(string1: String, string2: String) -> Bool {
    return string1.uppercased() == string2.uppercased()
}

areTheSame(string1: "hi", string2: "hi")
areTheSame(string1: "bye", string2: "Bye")


// 2

func funWithStrings(string1: String, string2: String, value: Int) -> String {
    if value > 10 {
        return "\(string1) \(string2)"
    } else {
        return "\(string2.uppercased())"
    }
}

funWithStrings(string1: "Hello", string2: "world", value: 20)
funWithStrings(string1: "Hello", string2: "world", value: 1)


// 3

func compareNumbers(value1: Int, value2: Int, value3: Int) {
    if value1 == value3 {
        print("The first and third values are the same")
    } else if value1 < value2 {
        print("The first value is less than the second")
    } else if value1 <=  value3 {
        print("The first value is less or equal than the third value")
    }
}

compareNumbers(value1: 1, value2: 2, value3: 1)
compareNumbers(value1: 1, value2: 2, value3: 10)
compareNumbers(value1: 10, value2: 2, value3: 11)
compareNumbers(value1: 10, value2: 2, value3: 9)


// 4

func beSadIfEmpty(string: String) {
    if string.isEmpty {
        print("😔")
    }
    print("Goodbye!")
}

beSadIfEmpty(string: "")
beSadIfEmpty(string: "😊")
