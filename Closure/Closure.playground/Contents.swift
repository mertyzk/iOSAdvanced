import UIKit

var greeting = "Hello, playground"

func sum(num1:Int, num2:Int)->Int{
    return num1+num2
}
sum(num1: 5, num2: 5)


func calculate(num1:Int, num2:Int, myFunction: (Int,Int)->Int) -> Int{
    return myFunction(num1,num2)
}

calculate(num1: 5, num2: 2, myFunction: sum)

calculate(num1: 4, num2: 8, myFunction: {(num1:Int, num2:Int)->Int in
    return num1 * num2
})


calculate(num1: 4, num2: 8, myFunction: {(num1, num2)->Int in
    return num1 * num2
})


calculate(num1: 4, num2: 8, myFunction: {(num1, num2) in
    return num1 * num2
})

calculate(num1: 4, num2: 8, myFunction: {(num1, num2) in num1*num2})
