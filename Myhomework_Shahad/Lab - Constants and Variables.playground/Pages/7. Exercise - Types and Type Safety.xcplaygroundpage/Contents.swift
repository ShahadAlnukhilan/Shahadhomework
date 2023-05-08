/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 20.5
var secondDecimal = 6.6
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true
firstDecimal = trueOrFalse
print("The data of values is diffrent the fist value is integer value and the second value is boolean value so can't assgin two diffrent data types in program")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var string = "This is a string."
firstDecimal = string
print("The data of values is diffrent the fist value is string value and the second value is boolean value so can't assgin two diffrent data types in program")

//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumber = 10
wholeNumber = firstDecimal
print("The data of values is diffrent the first value is integer value and the second value is boolean value so can't assgin two diffrent data types in program")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
