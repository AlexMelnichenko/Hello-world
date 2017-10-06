//: Playground - noun: a place where people can play

import UIKit



var q = 1
var f = 2
let e = "3"

let g = q + f


//Вычисление минимума и максимума//

func limits (number: Double...) -> (min: Double, max: Double){
    var limitsMin = number[0]
    var limitsMax = number[0]
    
    for numbers in number{
        if numbers > limitsMax{
            limitsMax = numbers
        }else{
            if numbers < limitsMin{
                limitsMin = numbers
            }
        }
    }
    return (limitsMin,limitsMax)
}
limits(85,2.567,3,224,27654)





let a = 2
let b = 5
let c = a + b
func calculator (_ op1: Double, op2:Double) -> Double{
    var sum = op1 + op2
    return sum
}

calculator



//////////////////////////////////////////////////////////////////////////////////    defer, func, string, bool //////////////////////////////////////////////////////////

var fridgeIsOpen = false
let frdgeContent = ["milk", "eggs", "leftovers"]

func fridgConteins (_ food: String) -> Bool {
    fridgeIsOpen = true
    
    defer {
        
        fridgeIsOpen = false
    }
    
    let result = frdgeContent.contains(food)
    return result
}

////////////////////////////////////////////////////////////////////////////////    func, Item,repirting,number, Int, For   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

func makeArrey<Item>(repeatin item: Item, numberOfTimes: Int) -> [Int] {
    
    var result = [Int]()
    
    for _ in 0..<numberOfTimes {
        result.append(numberOfTimes)
    }
    
    return result
}

makeArrey(repeatin: "knock", numberOfTimes: 4)

///////////////////////////////////////////////////////////////////////////////    For, Score,    ////////////////////////////////////////////////////////////////////////////

let individualScores = [75, 103, 43, 87, 12, 89]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print (teamScore)

/////////////////////////////////////////////////////////////////////////////    Optional, String, If let,    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var optionalString: String? = "Hi"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed!!!"

let informalGreeting = "Hi \(nickName ?? fullName)"

///////////////////////////////////////////////////////////////////////////////////    swich, case,  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let vegetable = "red pepper fuck"

switch vegetable {
    
case "celery":
    print("Add some raisins and make on a log")
    
case "cucumber", "watercress":
    print("That wuld make a good sandwich")
    
case let x where x.hasSuffix("fuck"):
    print("Is it a soicy \(x)?")
    
default:
    print("Evrything tastes good in soup")
}

/////////////////////////////////////////////////////////////////////////////////  for in, arrey  ///////////////////////////////////////////////////////////////////////////////////////////////////////

let interestingNumber = [
    
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumber {
    
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//////////////////////////////////////////////////////////////////////////////  while  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var n = 2
while n < 100 {
    n *= 2
}
print(n)


var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

////////////////////////////////////////////////////////////////////////////////////////////  make a range of indexes  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var total = 0

for i in 0..<4 {
    total += 1
}

print(total)

////////////////////////////////////////////////////////////////////////////////////////// Func, String, //////////////////////////////////////////////////////////////////////////////////////////////////////

func greet(_ person: String, on day: String) -> String {
    return("Hi \(person) today is \(day).")
}

greet("John", on: "Wendnesday")

///////////////////////////////////////////////////////////////////////////////////////tuple, func,Int, score////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistic = calculateStatistics([5, 3, 100, 3, 9])

print (statistic.sum)

print(statistic.2)


/////////////////////////////////////////////////////////////////////////////////////// tuple, func,Int,iteration, collecting //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(1, 1, 1)

///////////////////////////////////////////////////////////////////////////////////////    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





























