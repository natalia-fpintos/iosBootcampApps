// Structures

let songTitle1 = "Song 1"
let songArtist1 = "Artist 1"
let songDuration1 = 150

let songTitle2 = "Song 2"
let songArtist2 = "Artist 2"
let songDuration2 = 250

// Instead we use a structure!

struct Song {
    let title: String
    let artist: String
    let duration: Int
}

// We instance the structure:

let song1 = Song(title: "Song 1", artist: "Artist 1", duration: 150)
let song2 = Song(title: "Song 2", artist: "Artist 2", duration: 250)


// We access the properties of the instance with dot notation

print("\(song1.title) by artist \(song1.artist) has a duration of \(song1.duration) seconds")


// The properties of an instance cannot be changed if the property and/or the instance are declared as a constant with let

/*
 * i.e. song1.title = "Song 3!" -> This will throw a compiler error
 */

// Initialisers

/*
 * These are declared as init() {}
 * They are provided by swift by default
 */
    
// For example we could create a string with its default value this way:
let string = String.init()

// There's also a shorthand:
let string2 = String()


// The initialiser that creates an instance of a structure with many properties is known as a memberwise initialiser

let song3 = Song(title: "Song 3", artist: "Artist 3", duration: 250)


// Default values for properties

struct Person {
    let name: String = "Nat"
    var age: Int = 29
}

let me = Person()
print(me.name)
print(me.age)


// Custom initialisers: if we create our own, swift will not provide the memberwise initialiser
// Only one initialiser is required but we need to make sure we provide a value for all properties of the structure

struct Colour {
    let red, green, blue: Double
    
    init(value: Double) {
        red = value
        green = value
        blue = value
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

let white = Colour(value: 255)
let red = Colour(red: 255, green: 0, blue: 0)


// Instance methods

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}

let size = Size(width: 3, height: 7)
print(size.area())


// Challenge!

struct Book {
    let title: String
    let author: Author
    let numberOfPages: Int
    var releaseYear: Int = 0
    
    func description() {
        print("\(self.title) by \(self.author.name) \(self.author.surname)")
    }
    
    init(title: String, author: Author, numberOfPages: Int, releaseYear: Int) {
        self.title = title
        self.author = author
        self.numberOfPages = numberOfPages
        self.releaseYear = releaseYear
    }
    
    init(title: String, author: Author, numberOfPages: Int) {
        self.title = title
        self.author = author
        self.numberOfPages = numberOfPages
    }
}

struct Author {
    let name: String
    let surname: String
    let twitterHandle: String
}

let author = Author(name: "George R. R.", surname: "Martin", twitterHandle: "grrmspeaking")
let book = Book(title: "A Game of Thrones", author: author, numberOfPages: 1000, releaseYear: 1991)
let book2 = Book(title: "A Storm of Swords", author: Author(name: "George R. R.", surname: "Martin", twitterHandle: "grrmspeaking"), numberOfPages: 1000, releaseYear: 1991)
book.description()
book2.description()
