import UIKit

struct Person {
    var age = 16
    
    lazy var fibonacciAge : Int = {
        return fibonacci(of: self.age)
    }()
    
    func fibonacci(of num: Int) -> Int{
        if num < 2 {
            return num
        }
        else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}


var p1 = Person()
print(p1.fibonacciAge)


struct InterviewCandiate {
    var isIOSDeveloper : Bool?
    
    lazy var iOSResumeDescription : String = {
        return "ben ios geliştiriciyim"
    }()
    
    lazy var androidResumeDescription : String = {
        return "ben android geliştiriciyim"
    }()
}

var p2 = InterviewCandiate()
p2.isIOSDeveloper = true
if p2.isIOSDeveloper! {
    print(p2.iOSResumeDescription)
} else {
    print(p2.androidResumeDescription)
}
