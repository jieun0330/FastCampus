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






//CH01_08.조건문

