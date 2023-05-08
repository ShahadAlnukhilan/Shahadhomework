import Foundation

// Create empty array of type Int
var IntArray : [Int] = []
// add five values to the array
 var IntArray1 : [Int] = [1,2,3,4,5]
// Use a for-in loop to iterate through the array
for index1 in IntArray {
   print(index1)
}
// Create a dictionary with string keys and integer values
var IDandNames : [String:Int] = [ "Shahad":1088,"Nuha":1067,"Rawabi":1023]
// Use a for-in loop to iterate through the dictionary
for index2 in IDandNames {
   print(index2)
}

// Create a while loop that counts up to 100
var number = 0
while number < 100 {
    number += 1
    print(number)
}

// Create a repeat-while loop that counts down from 10
var number2 = 10
repeat {
    print(number2)
    number2 -= 1
} while number2 > 0


// Use a for-in loop to iterate through a range of numbers
for iterate in 1...4 {
   print(iterate)
}
// Use a for-in loop to iterate through a range of numbers with a step
//: OUTPUT
/*
 0
 2
 4
 6
 8
 */
var Number3 = 8
for iterate2 in 0...Number3 {
    if (iterate2 % 2 == 0){
        print(iterate2)
    }}

// Create an array of strings and use a for-in loop to print each one

var ArrayNames = ["Shahad", "Lama", "lara", "Amal"]

for iterate3 in ArrayNames {
    print(iterate3)
}
// Use a for-in loop with the enumerated() method to iterate through an array and print the index and value of each element

let NumbersArray : Set = [33, 40, 6, 82, 11,33,66]


let Index = NumbersArray.enumerated()

for (x, y) in Index{
  print(x, y)
}
/*
 Write a swift program to formulate this shape
 😃
 😃😃
 😃😃😃
 😃😃😃😃
 😃😃😃😃😃
 */
var image = "😃"
print(image); print(image,image); print(image,image,image);  print(image,image,image);  print(image,image,image,image);  print(image,image,image,image,image);

