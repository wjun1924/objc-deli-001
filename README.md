# Deli Counter

## Objectives

1. Write custom methods that take arguments and return results.
2. Use a method as a helper method.
3. Read and run unit tests to check your work.

## Instructions

The local deli is putting in a new computerized queue to keep track of their customers and improve productivity.

1. Open the `*.xcworkspace` file. Declare three instance methods (beginning with `-`) in `FISAppDelegate.h`:
  * `stringWithDeliLine:` should accept an `NSMutableArray` argument `deliLine` and return an `NSString` object.
  * `addName:toDeliLine:` should accept an `NSString` called `name` and an `NSMutableArray` called `deliLine` as arguments, and return an `NSMutableArray`.
  * `serveNextCustomerInDeliLine:` should accept an `NSMutableArray` called `deliLine` as an argument and return an `NSString`.  

2. Define them in `FISAppDelegate.m` to return a default value (or `nil`) and run the tests to fail. Review what the `Spec` file expects from your methods.

3. Build the `stringWithDeliLine:` method to:
  * if there are no customers in line, return the string `The line is empty.`,
  * otherwise, return a formatted string beginning with `The line is:` and appending every customer in the queue on a new line (`\n`) beginning with their number in the queue, e. g. `1. Anita B.`. *Remember, these customers are humans so they count from one—not from zero like computers.*

4. Build the method `addName:toDeliLine:` method to add the submitted `name` to the `deliLine`. Return the updated `deliLine` mutable array.

5. Build the method `serveNextCustomerInDeliLine:` method. Save the first name in the `deliLine` to an `NSString` object wihin the method. Then remove the first object from the `deliLine` and return the name you saved in the string object. **Hint:** *Using* `removeObject:` *could be problematic for you. There's another method on* `NSMutableArray` *that will let you specify an object to remove by array index.*
