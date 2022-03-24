import UIKit

struct Person{
    var name : String
    var surName : String
    var birthday : Int
    func calcAge() -> Int{
        return 2022 - birthday
    }
    func getByPersonInfo(){
        print("""
         Name: \(name)
         Surname: \(surName)
         Birthday: \(birthday)
         Age : \(calcAge())
         """)
    }
}

var p1 : Person = Person(name: "Mert", surName: "Github", birthday: 1994)
var p2 : Person = Person(name: "Ahmet", surName: "Test", birthday: 1990)
print(p1.calcAge())
print(p2.calcAge())

p1.getByPersonInfo()


struct Student{
    var logInformation : Person
    var university : String
    var studentNo : String
    var gradeAvarage : Double
}

var student1 : Student = Student(logInformation: Person(name: "Selin", surName: "Yorumcu", birthday: 1999), university: "METU", studentNo: "18050066", gradeAvarage: 2.75)

student1.logInformation.getByPersonInfo()

struct StudentGroup{
    var students : [Student]
    var groupName : String
    func showGroupInfo(){
        print("####################")
        print("Group name: \(groupName)")
        print("Students count: \(students.count)")
        print("####################")
        print("Students in the group")
        for student in students {
            print(student.logInformation.name)
        }
    }
}

var group1 : StudentGroup = StudentGroup(students: [Student](), groupName: "iOS Development")
group1.students.append(student1)
group1.showGroupInfo()
