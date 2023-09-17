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

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "gunter", age: 23)

user.nickname
user.nickname = "Albert"
user.nickname

user.information()
