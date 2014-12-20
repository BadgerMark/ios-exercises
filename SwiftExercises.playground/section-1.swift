import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    var cheese = "My favorite cheese is " + cheese + "."
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")

// Make fullSentence say "My favorite cheese is cheddar."
println(fullSentence)
/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
var newArray = [5]
newArray.splice(numberArray, atIndex: 0)
for var i = 0; i < newArray.count; i++ {
        println("how many?")
    println(newArray[i])
}

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var newDict = [Int: String]()
newDict = numberDictionary
newDict[5] = "five"
newDict
for (myInt, myString) in newDict {
    println("the key \(myInt) value is \(myString).")
}

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<10 {
    println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    let numberOfTrek = characters.count
    var drinksArray = [String]()
    var dictionaryOfTrek  = [String : String]()
    for var i = 0; i < numberOfTrek; i++ {
        dictionaryOfTrek = characters[i]
        for favoriteDrinks in dictionaryOfTrek {
            var drinkie = dictionaryOfTrek["favorite drink"]
            if(!contains(drinksArray, drinkie!)){
                drinksArray.append(drinkie!)
            }
        }
    }
    for var j = 0; j<drinksArray.count; j++ {
        println(drinksArray[j])
    }
    return drinksArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

//println(favoriteDrinks)

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
var actualOutput = String()
var semiColon = ";"
func returnDelimitedString(foods:Array<String>) -> String {
    for var i = 0; i < foods.count; i++ {
        println(foods[i])
        actualOutput += foods[i]
        if(i < foods.count - 1){
            actualOutput += semiColon
        }
    }
    return actualOutput
}
let expectedOutput = "milk;eggs;bread;challah"
returnDelimitedString(strings)
println("Actual Output: \(actualOutput)")

println(actualOutput == expectedOutput)
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let sortedCereals = sorted(cerealArray, <)
println(sortedCereals)
