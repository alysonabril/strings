//
//  main.swift
//  strings
//
//  Created by Alyson Abril on 10/9/18.
//  Copyright © 2018 Alyson Abril. All rights reserved.
//

import Foundation
//string - is a collection of characters
//concatenation
//let firstName = "Johnny"
//let lastName = "Appleseed"
//use concatenation
//let fullName = firstName + " " + lastName
//print(fullName)

//string interpolation
//let year = 2018
//
//print("The current year is \(year).")

//e.g. string literal
//let name = "Aly"

//initialization - give something a default value
var date: String = "October 9th, 2018"
print(date)

//string formatting
let someString = String(format: "%.2f", 10.345)
print("using string formating to print 2 decimal places \(someString)")

//test for empty string
let emptyString = ""
//using ternary operator ?:
emptyString.isEmpty ? print("empty") : print("NOT empty")
//
//alternate using if/else
if emptyString.isEmpty { //isEmpty - built in function
    print("empty - if/else")
} else {
    print("NOT empty - if/else")
}

//comparing strings

let string1 = "Pursuit"
let string2 = "C4Q"
string1 == string2 ? print("You're in both cohorts") : print("Pursue your dream")

//string mutability
let homePlanet = "Earth" // let = immutable - cannot change

var codeInexperience = 0 //var = mutable - can change
codeInexperience = 10

//
//casting - changing the type annotation
let stringExperience = String(codeInexperience)
print("I have \(stringExperience) months experience.")

//value type - each instance keeps a unique copy of its data || every can get their own copy
//reference type - each instances share a single copy of the data || everyone shares one copy
let movie = "Toy Story"
var nextMovie = movie
nextMovie += " 2" // if nextMovie was a (class type) it would alter movie's value
print(nextMovie)

//iterating through a string
let iOS = "iOS is awesome!!!"
//
for letter in iOS { // using a for loop to print out every character of iOS string
   //print defaults to printing on separate line because of new line character
 print (letter, terminator: "|") //terminator does not default to new line
}
   print("")

//count characters in a String
print("There are \(iOS.count) characters in the string")

//drop last character in string
print("dropping the last character \(iOS.dropLast())")

//reverse string
let greeting = "hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

//check if String is a palindrome
//lowercase and uppercase letter hold diffferent ascii (sounds like - askey) values
let testPalindromeStr = "racecar"
let isPalindrome = String(testPalindromeStr.reversed())

if testPalindromeStr == isPalindrome {
print("is a palindrome")
} else {
print("NOT a palindrome")
}


//comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")

//U+14F40D
let snake = "\u{1F40D}\u{1F61C}"
for _ in 0...10 {
    print(snake, terminator:"")
}

