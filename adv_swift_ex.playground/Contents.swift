import UIKit

//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
//CLASS exercise number based on class name
//CLASS exercise number based on class name
//CLASS exercise number based on class name

class One {
    
    var a : Int = 1
    var b : Int = 2
    
}

var one = One()
one.a = 3 //setting value
one.b = 4
print(one.a,one.b) //getting value


//•    Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class Two {
    
    var name : String
    var college : String
    var dept : String
    
    init (name : String , college : String){
        self.name = name
        self.college = college
        self.dept = "General Dept"
    }
    
    init (name: String,dept: String){
        self.name = name
        self.dept = dept
        self.college = "Gtu"
    }
}

var two =  Two(name: "shubham", dept: "IT")
print(two.college,two.dept,two.name)
var two2 = Two(name: "Shubh", college: "LD")
print(two2.college,two2.dept,two2.name)

//•    Create a swift class without initializers and access (write, read) its properties using instance of class.

class Three {
    
    var a : Int = 1
    var b : Int = 2
    
}

var three = Three()
three.a = 5 //write property
print(three.a)


//•    Create a swift class which is having code to return square of given number and access this code using class instance.

class Four {
    
    func square(a : Int)->Int{
        
        return a*a
        
    }
}

var four =  Four()
four.square(a: 5)

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.


class Five {
    
    var a : Int = 5
    
}

class A : Five {
    var b  : Int = 6
}

class B : Five {
    var c : Int = 8
}

var five  = Five()
var child1 = A()

print(child1.a,child1.b)
var child2 = B()
print(child2.c,child2.a)

//
//•    Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Six {
    
    func method(){
        print("parent class method")
    }
    
}
class Ex1 : Six{
    
    override func method() {
        print("child class method")
    }
}
    
var ex1 = Ex1()
ex1.method()



//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
class Seven {
    
    var number : Int
    
    
    
    init (number : Int ){
        self.number = number
    }
    
    func power(a : Int)-> Int{
    var temp = 1
        for _ in 0..<a {
            temp = temp*number
        }
        return temp
    }
}

var seven = Seven(number: 5)
print(seven.power(a: 3))
//5^3 = 125

//•    Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
//



class Vehicles {
    
    var vehicleType : String
    var numOfWheels : Int
    var name : String
    var price : Int
    var numOfGears: Int {
        return 4
    }
    init (vehicleType : String,numOfWheels : Int,name :String,price : Int){
        self.vehicleType = vehicleType
        self.numOfWheels = numOfWheels
        self.name = name
        self.price = price
    }
}

class Bike : Vehicles {
    
    var isSportsBike : Bool
    var hasGears : Bool
    override var numOfGears: Int {
        return hasGears ? 4 : 0
    }
    init(isSportsBike : Bool,hasGears : Bool){
        self.isSportsBike = isSportsBike
        self.hasGears = hasGears
        super.init(vehicleType: "TwoWheller", numOfWheels: 2, name: "Bike", price: 50000)
    }
    
}

class Car : Vehicles {
    
    var isSportsCar : Bool
    var isAutomatic : Bool
    override var numOfGears: Int {
        return isAutomatic ? 4 : 0
    }
    init(isSportsCar : Bool,isAutomatic : Bool){
        self.isSportsCar = isSportsCar
        self.isAutomatic = isAutomatic
        super.init(vehicleType: "FourWheeler", numOfWheels: 4, name: "Honda", price: 5000)
    }
    
}

var bike = Bike(isSportsBike: true, hasGears: false)
print(bike.numOfGears)


//•    Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//Person1.greet() // This should print “Hello Joe”
//

class Person {
    var name : String
    func greet(){
        
        print("hello \(name)")
        
    }
    init(name : String){
        self.name = name
    }
}
var person = Person(name: "Shubham")
person.greet()


//•    Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
//// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.


class Example {
    
    var a : String = "Default"
    
}

let example1 = Example()
example1.a = "Helloo"

let example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)

//Reason : Classes are Reference type and here we are passing refernce of one instance to another so value of 'a'' changes
//Reason : Classes are Reference type and here we are passing refernce of one instance to another so value of 'a'' changes

//Structure
//    •    Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
//
//
//
//
//

//
//
//
//
//// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
//Output be like: Name: Joe, Gender: Male, Age: 27
//      Name: Harry, Gender: Male, Age: 21
//
//    •    Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
//
//    •    Try to figure out basic difference between class and structures and give a demo for same.
//

struct Work {
    var loc : String
    var workHours : Int
    var arrOfNAmes : [String]
    
    func names (){
        
        for i in arrOfNAmes {
            print(i)
        }
      
    }
    init(loc : String,workHours : Int,arrOfNAmes : [String]){
        self.loc = loc
        self.workHours = workHours
        self.arrOfNAmes = arrOfNAmes
    }
}

var work = Work(loc: "IScon", workHours: 8, arrOfNAmes: ["Drone","defense"])
work.names()

// •    Create a structure example which demonstrates use of initializer in structures.


struct Work1 {
    
    var loc : String
    var workHours : Int
    var arrOfNAmes : [String]
    
   
//    init(loc : String,workHours : Int,arrOfNAmes : [String]){
//        self.loc = loc
//        self.workHours = workHours
//        self.arrOfNAmes = arrOfNAmes
//    }
}

var work1 = Work1(loc: "IScon", workHours: 8, arrOfNAmes: ["Drone","defense"])


//    •    Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.

struct Param {
    
    var name : String
    var num : Int
    
    init(name : String,num : Int){
        self.name = name
        self.num = num
    }
    init (){
        self.name = "default name"
        self.num = 0
    }
}
var para = Param()
var para2 = Param(name: "shubham", num: 8)
print(para.num,para.name)
print(para2.name,para2.num)


//•    Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//                 Odd numbers are: [1, 3, 5, 9, 7]


struct OddEven {
    
    var arr : [Int]
    
    init(arr : [Int]){
        self.arr = arr
    }
    func oddEve()->([Int],[Int]){
        var odd : [Int] = []
        var even: [Int] = []
        for i in arr {
            if i%2 == 0 {
                even.append(i)
            }else{
                odd.append(i)
            }
        }
        return (odd,even)
    }
}
var oddEv  = OddEven(arr: [1,2,34,5,6,7])

print(oddEv.oddEve().0) //odd
print(oddEv.oddEve().1)

//•    Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.

struct Person2 {
    var name : String
    var age : Int
    var gender : String
    var arrOfPerson : [Any]
    
    init(name : String,age : Int,gender : String){
        self.name = name
        self.age = age
        self.gender = gender
        self.arrOfPerson = [self.name,self.age,self.gender]
    }
}

var person2 = Person2(name: "Shubham", age: 20, gender: "Male")
print(person2.arrOfPerson)
print("name is : \(person2.name) , age is : \(person2.age) , gender is : \(person2.gender)")
//basic difference between structure and class
//Experiment
class StudentClass {
   var name: String
   var grade: Int
   init(name: String, grade: Int) {
      self.name = name
      self.grade = grade
   }
}
let student1 = StudentClass(name: "Bhatt Shubham", grade: 9)
let student2 = student1
student2.name = "Darshan Dangar"
print("student1 name: \(student1.name)")
print("student2 name: \(student2.name)")

struct StudentStruct {
   var name: String
   var grade: Int
}
let student3 = StudentStruct(name: "Bhatt Shubham", grade: 8)
var student4 = student3
student4.name = "darshan dangar"
print("student3 name: \(student3.name)")
print("student4 name: \(student4.name)")
    

//Tuesday 28/03
//Tuesday 28/03
//Tuesday 28/03

enum WeekDays: Int {
    case  Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday,Sunday
    //implicitly incremental enum
    
    static func getDayName(_ number: Int) -> String {
        switch WeekDays(rawValue : number) {
        
        case .Monday:
            return "mon"
        case .Tuesday:
            return "tue"
        case .Wednesday:
            return "wed"
        case .Thursday:
            return "thu"
        case .Friday:
            return "fri"
        case .Saturday:
            return "sat"
        default:
        return "Sun"
        }
    }
    
   
    

}
print(WeekDays.getDayName(7))

enum Month: Int {
    case January , February, March, April, May, June, July, August, September, October, November, December
    
    var days: Int {
        switch self {
        case .January, .March, .May, .July, .August, .October, .December:
            return 31
        case .April, .June, .September, .November:
            return 30
        case .February:
            return 28
        }
    }
    
    
}


let month = Month.February
print(month.days)

enum TypeInt : Int{
    
    case odd = 1
    case even = 2
    
}
print("odd number rawvalue",TypeInt.odd.rawValue)

enum Person78: String {
    case firsName = "Shubham"
    case lastName = "Bhatt"
    
}

let person78 = Person78.firsName
print("person: \(person78.rawValue)")

enum Days: Int {
   case  Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday,Sunday
}

let day = Days.Wednesday
print("Today is  \(day).")

enum Upi {
    case success(amount: Double)
    case failure(reason: String)
}

let payment = Upi.success(amount: 50.0)

switch payment {
case .success(let amount):
    print("Payment successful. Amount: \(amount)")
case .failure(let reason):
    print("Payment failed. Reason: \(reason)")
}

enum Direction: String {
    case north = "N"
    case south = "S"
    case east = "E"
    case west = "W"
}

let direction = Direction.north
print("Direction: \(direction.rawValue)")

///method properties
///1
class Car23 {
    private var pvtModel: String
    
    var model: String {
        get {
            return pvtModel
        }
    }
    
    init(model: String) {
        pvtModel = model
    }
}

let myCar = Car23(model: "Mustang")
print(myCar.model)
//myCar.model = "Ferrari" //compile time error cant set
//2
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        get {
            return width * height
        }
        set {
            
            width *= newValue
            height *= 3
        }
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

var rectangle = Rectangle(width: 10, height: 20)
print(rectangle.area)

rectangle.area = 400
print(rectangle.width)
print(rectangle.height)
//3 example of stored properties
class Person3 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let person3 = Person3(name: "Shubham")
print(person3.name)
//4) Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
class Person4 {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return name
    }
    
    func setName(name: String) {
        self.name = name
    }
}

let person4 = Person4(name: "bhatt")
print(person4.getName())
person4.setName(name: "Shubham")
print(person4.getName())
// 5) Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.
class Person5 {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

let person11 = Person5(id: 1, name: "shubham")
let person21 = Person5(id: 2, name: "darshan")
let person31 = Person5(id: 3, name: "shyam")

let people = [person11, person21, person31]

for person in people {
    print("Person id: \(person.id), name: \(person.name)")
}
// 6) Create one example of usage of willSet and didSet.
class Person7 {
    var name: String {
        willSet {
            print("Name will change from \(name) to \(newValue)")
        }
        didSet {
            print("Name changed from \(oldValue) to \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

var person45 = Person7(name: "shubh")
person45.name = "shubham"
// 7) Create one lazy stored property in a class and show usage of it.
class Person8 {
    var name: String
    lazy var greeting: String = {
        print("greeting is being set by shubham")
        return "Hello, my name is \(name)"
    }()
    
    init(name: String) {
        self.name = name
    }
}

let person8 = Person8(name: "Shubham")
print(person8.greeting)
/// 8) Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class PersonBaseClass {
    var name: String
    var occupation: String
    
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}

class Student: PersonBaseClass {
    var college: String
    
    init(name: String, college: String) {
        self.college = college
        super.init(name: name, occupation: "Student")
    }
}

class Employee: PersonBaseClass {
    var company: String
    
    init(name: String, company: String) {
        self.company = company
        super.init(name: name, occupation: "Employee")
    }
}

let shubham = Student(name: "shubham", college: "Ld College")
print("\(shubham.name) is a \(shubham.occupation) at \(shubham.college)")

let bhatt = Employee(name: "bhatt", company: "Simform Company")
print("\(bhatt.name) is an \(bhatt.occupation) at \(bhatt.company)")


//mutating func
struct Number {
    var value: Int
    
    mutating func addValue(_ number: Int) {
        value += number
    }
}

var num = Number(value: 5)
print(num.value)

num.addValue(10)
print(num.value)

//Create one class inheritance demo to show usage of method overridin

class Vehicle1 {
    func drive() {
        print("This is a vehicle.")
    }
}

class Car2: Vehicle1 {
    override func drive() {
        print("This is a car.")
    }
}

let vehicle1 = Vehicle1()
vehicle1.drive()

let car2 = Car2()
car2.drive()


class Write {
    static func write() -> Void {
        print("writing in static method")
    }
    
   
}

Write.write()
// 11) Create one swift class to show usage of type methods.

class MyClass {
    class func classMethod() {
        print("This is a class method.")
    }
    
    static func staticMethod() {
        print("This is a static method.")
    }
}

class MySubclass: MyClass {
    override class func classMethod() {
        print("This is an overridden class method.")
    }
    
    // Cannot override a static method
    // override static func staticMethod() {}
}

MyClass.classMethod()
MyClass.staticMethod()

MySubclass.classMethod()
MySubclass.staticMethod()

class Weekdays {
    let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    subscript(index: Int) -> String {
        return weekdays[index%weekdays.count] //to tackle with out of bound error
    }
}

let days = Weekdays()
print(days[0])
print(days[1])


extension String {
    subscript(index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

let myString = "Shubham Bhatt"
print(myString[1])
print(myString[7])

//16

class Arr1 {
    var arr22 = Array(1...9)
    
    subscript(range: ClosedRange<Int>) -> [Int] {
        Array(arr22[range])
    }
}

let subArry = Arr1()
print(subArry[2...5])

//17

class Subs {
    var arr: [[Int:String]] = [[1:"Hello"],[2:"hi"]]
    subscript (posi : Int)->String{
        for i in arr {
            if i[posi] != nil {
                return i[posi]! }
            
        }
        return "Not Found"
        
    }
    
}
var sub = Subs()
sub[1]





struct Person44 {
    var name: String
    var age: Int
    var birthdate: String
}

class PersonArray {
    var persons: [Person44]
    
    init(persons: [Person44]) {
        self.persons = persons
    }
    
    subscript(name: String) -> Person44? {
        return persons.first(where: { $0.name == name })
    }
}

let persons = [Person44(name: "shubham", age: 25, birthdate: "01/01/2002"),
               Person44(name: "bhatt", age: 30, birthdate: "02/02/2000"),
               Person44(name: "shyam", age: 35, birthdate: "03/03/2002")]

let personArray = PersonArray(persons: persons)

if let shubh = personArray["shubham"] {
    print("Name: \(shubh.name), Age: \(shubh.age), Birthdate: \(shubh.birthdate)")
} else {
    print("man not found.")
}





class Song {
    let singer: String
    
    init(singer: String) {
        self.singer = singer
    }
    
    func play() {
        print("Playing \(self.singer)'s song")
    }
}

class HipHop: Song {
    let composer: String
    
    init(singer: String, composer: String) {
        self.composer = composer
        super.init(singer: singer)
    }
    
    override func play() {
        print("Playing \(self.singer)'s Hip-Hop song composed by \(self.composer)")
    }
}

class Classical: Song {
    let composer: String
    
    init(singer: String, composer: String) {
        self.composer = composer
        super.init(singer: singer)
    }
    
    override func play() {
        print("Playing \(self.singer)'s Classical song composed by \(self.composer)")
    }
}

let song1 = Song(singer: "Arijit")
song1.play()

let hipHopSong = HipHop(singer: "ankit", composer: "tiwari")
hipHopSong.play()

let classicalSong = Classical(singer: "atif", composer: "aslam")
classicalSong.play()



class MyClass1 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let myObj = MyClass1(name: "Shubham", age: 20)
myObj.name = "Bhatt"
myObj.age = 30

print(myObj.name)
print(myObj.age)




//Error Handling
//Error Handling

enum PassErr: Error {
    case passwordTooShort(min: Int)
    case emptyPassword
}

class Validator {
    let minLength = 8
    
    func validation(passw: String) throws {
        if passw.isEmpty {
            throw PassErr.emptyPassword
        } else if passw.count < minLength {
            throw PassErr.passwordTooShort(min: minLength)
        }
        print("password validated")
    }
}

let valid = Validator()
do {
    try valid.validation(passw: "")
} catch PassErr.emptyPassword {
    print("empty password")
} catch PassErr.passwordTooShort(let minimum) {
    print(" \(minimum) charecters required , password is short")
}

try? valid.validation(passw: "Shubham@123")

do {
    try valid.validation(passw: "another")
} catch PassErr.emptyPassword {
    print("Password is empty")
} catch PassErr.passwordTooShort(let minimum) {
   print(" \(minimum) charecters required , password is short")
}



// 2) Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum CartErr: Error {
    case NotAvailable
}

struct Cart {
    private let items = ["bag", "shooes", "belt", "geyser"]
    
    func available(item: String) throws {
        if items.contains(item) {
            print("item available , bought")
        } else {
            throw CartErr.NotAvailable
        }
    }
}

var cart1 = Cart()
try? cart1.available(item: "bag")
try? cart1.available(item: "jacket")


//Extension Programs


extension String {
    mutating func insertCharacter(at index: Int, char: Character) {
        self.insert(char, at: self.index(self.startIndex, offsetBy: index))
    }
}

var str1 = "Shubham"
str1.insertCharacter(at: 5, char: "s")
print(str)



extension String {
    mutating func replaceCharacter(oldChar: Character, newChar: Character) {
        self.replacingOccurrences(of: String(oldChar), with: String(newChar))
    }
}

var str2 = "hello"
str2.replaceCharacter(oldChar : "h",newChar : "s")
print(str2)



extension String {
    func removeSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

var str3 = "Bhatt   shubham  "
str3 = str3.removeSpace()
print(str3)



extension String {
    func getCount()->Int{
            let words = self.split(separator: " ")
return words.count
    }

}
let str = "hello ia ma shibham  u"
print(str.getCount())



