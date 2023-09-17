import UIKit

//CH01_06.컬렉션 타입
//Array
var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)

numbers.remove(at: 0)
numbers

var names: [String] = []

//dictionary
//var dic: Dictionary<String, Int> = Dictionary<String,Int>()
var dic: [String: Int] = ["권태완": 1]
dic["김철수"] = 3
dic["김민지"] = 5
dic

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic

//set
//순서없고, 멤버가 유일함을 보장함
//array와 다르게 데이터가 순서대로 저장되지않고, 데이터 중복을 허용하지 않는다
var set: Set = Set<Int>()
//set는 축약형 선언이 없어서 이렇게 해야됨
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set











//CH01_07.함수 사용법
func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)


func hello() -> String {
    return "hello"
}

hello()

// 반환값이 없을때는 Void를 쓰거나 적지 않아도 된다.
//func printName() -> Void {
//
//}

func printName() {
    
}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")


func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "Gunter", to: "Json")

// 전달인자 레이블을 사용하고 싶지 않다면
func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}

// 매개변수를 쓰지 않아도 값만 적어도 가능하다
sendMessage("권태완")



// 가변 매개변수?
// String... 이렇게 점 세개를 붙인다
func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "Gunter", friends: "Json", "Albert", "Stella")






//CH01_08. 조건문
let age = 20

if age < 19 {
    print("미성년자 입니다.")
}


if age < 19 {
    print("미성년자")
} else {
    print("성년자")
}


let animal = "pig"

if animal == "dog" {
    print("강아지 사료 주기")
} else if animal == "cat" {
    print("고양이 사료 주기")
} else {
    print("해당하는 동물 사료가 없음")
}


/*
 switch 비교대상 {
  case 패턴1:
  case 패턴2:
  case 패턴3:
  default:
    어느 비교 패턴과도 일치하지 않을 때 실행되는 구문
 }
 */

let color = "red"

switch color {
case "blue":
    print("파란색 입니다")
case "green":
    print("초록색 입니다")
case "yellow":
    print("노란색 입니다")
default:
    print("찾는 색상이 없습니다")
}



let temperature = 30

switch temperature {
case -20...9:
    print("겨울입니다")
case 10...14:
    print("가을입니다")
case 15...25:
    print("봄입니다")
case 26...35:
    print("여름입니다")
default:
    print("이상 기후입니다")
}






//CH01_09.반복문
// for-in, while, repeat-while

/*
 for 루프상수 in 순회대상 {
    실행할 구문
 }
 */

for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]

for i in array {
    print(i)
}


//while
//var number = 5
//
//while number < 10 {
//    number += 1
//}

//number


//repeat-while
/*
 repeat {
    실행할 구문
 } while 조건식
 */

var x = 6

// 조건이 안맞아도 무조건 한번은 실행하게 됨
repeat {
    x += 2
} while x < 5

print(x)





//CH01_10.옵셔널
// 값이 있을 수도 있고 없을 수도 있다.
// var name: String = "" -> 값이 없는게 아니라 빈 문자열의 값을 가지고 있다
// var name: String? = nil -> nil이 값이 없는 거임

// var number: Int = 0 -> 값이 없는게 아니라 0이라는 숫자 값이 있는 거임
// var number: Int? = nil

var name: String?

//옵셔널 타입에도 일반 값을 넣을 수 있음
var optionalName: String? = "Gunter"
print(optionalName)
// optional 포장지로 싸여져있음
// 포장지를 벗겨 값을 가져오는게 optional binding 임

// 옵셔널 변수를 넣을 수 없음
//var requiredName: String = optionalName





//CH01_11.옵셔널 바인딩
/*
 명시적 해제: 강제 해제, 비강제 해제(옵셔널 바인딩)
 묵시적 해제: 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제
 */

var number: Int? = 3
print(number)
//강제 해제 -> 매우 위험, nil인 값을 벗기면 에러가 발생해 컴퓨터가 강제 종료됨
print(number!)

//안전하게 해제하려면 비강제 해제
if let result = number {
    print(result)
} else {
    
}


// guard문으로 옵셔널 바인딩을 할 수 있다 정도만 알아둬 지금은!
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()



let value: Int? = 6
if value == 6 {
    print("value가 6입니다")
} else {
    print("value가 6이 아닙니다")
}



// 묵시적 해제

let string = "12"
var stringToInt: Int? = Int(string)
print(stringToInt!)







//CH01_12.구조체
// 클래스? 구조체?
/*
 struct 구조체 이름 {
    프로퍼티와 메서드
 */

//struct User {
//    var nickname: String
//    var age: Int
//
//    func information() {
//        print("\(nickname) \(age)")
//    }
//}
//
//var user = User(nickname: "gunter", age: 23)
//
//user.nickname
//user.nickname = "Albert"
//user.nickname
//
//user.information()






//CH01_13.클래스
/*
 class 클래스 이름 {
    프로퍼티와 메서드
 */
//
//class Dog {
//    var name: String = ""
//    var age: Int = 0
//
//    // 초기화하고자 할 때?
//    init() {
//
//    }
//
//    func introduce() {
//        print("name \(name) age \(age)")
//    }
//}
//
//var dog = Dog()
//dog.name = "coco"
//dog.age = 3
//dog.name
//dog.age
//
//dog.introduce()






//CH01_14.초기화 구문 init
//인스턴스의 초기화를 담당

/*
 init(매개변수: 타입, ...) {
    프로퍼티 초기화
    인스턴스 생성 시 필요한 설정을 해주는 코드 작성
 */

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    // init반대역할을 함
    // class의 인스턴스에만 구현 가능
    deinit {
        print("deinit user")
    }
}

var user = User(nickname: "gunter", age: 23)
user.nickname
user.age

var user2 = User(age: 27)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil






//CH01_15.프로퍼티
// 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다
// 저장, 연산, 타입 프로퍼티

struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "gunter", gender: "Male")
print(dog)

dog.name = "권태완"
//dog.gender = "female"

let dog2 = Dog(name: "gunter", gender: "male")
//dog2.name = "권태완"

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)
// 클래스는 참조 타입이기 때문에 상수여도 값이 변경 됨


struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set {
            averagePrice = newValue / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

//프로퍼티 옵저버
//저장 프로퍼티가 어떻게 사용되는지 알아보자

class Account {
    var credit: Int = 0 {
        // 값이 저장되기 전
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다")
        }
        //값이 저장되기 후
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다")
        }
    }
}

var account = Account()
account.credit = 1000
account.credit = 2000

//타입 프로퍼티

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty





//CH01_16.클래스와 구조체의 차이
/*
 클래스와 구조체의 공통점
 - 값을 저장할 프로퍼티를 선언할 수 있다
 - 함수적 기능을 하는 메서드를 선언할 수 있다
 - 내부 값에 .을 사용하여 접근할 수 있다
 
 클래스
 - 참조 타입
 - 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 줌
 
 구조체
 - 값 타입
 - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당된다.
 - 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않는다
 */

//참조 타입
class SomeClass {
    var count: Int = 0
}

struct SomeStruct {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count

//값 타입이라 값을 변경하더라도 다른데에 영향을 주지 않는다





//CH01_17.상속
// 부모가 자식에게 재산을 물려주는 행위

class Vehicle {
    // final : 재정의 할 수 없음
//    final var currentSpeed = 0.0
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

/*
 class 클래스 이름: 부모 클래스 이름 {
    하위 클래스 정의
 }
 */
class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed


//overriding
//자신만의 기능으로 바꿔서 사용함

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)


class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")





//CH01_18.타입 캐스팅
// 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급하는 방법
// 타입캐스팅 연산자: is, as -> 값을 확인하거나 값을 변경함

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"),
    Song(name: "Butter", artist: "BTS"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "Wonderwall", artist: "Oasis"),
    Song(name: "Rain", artist: "이적")
]



var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

for item in library {
    // as? downcasting ? 항상 성공할거라고 확신읻 들 때만 사용?
    // as? 옵셔널이여서 if let으로 꺼내옴
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}
