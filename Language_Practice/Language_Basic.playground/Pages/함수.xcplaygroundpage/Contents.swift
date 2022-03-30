//: [Previous](@previous)

import Swift

// 함수 선언의 기본형태
//func 함수이름 (매개변수1 이름: 타입, 매개변수2 이름: 타입 ....) -> 반환타입{
    //함수구현
    //return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환 값이 없는 함수
// func 함수이름(매견변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void { //Void는 생략가능
//  함수구현부
// return
//}

func printMyName(name: String) -> Void{
    print(name)
}

// 매개변수가 없는 함수
/*func 함수이름() -> 반환 타입{
    함수구현부
 return
 }*/

func maximumIntegerValue() -> Int {
    return Int.max
}

//매개변수와 반환값이 없는 함수
/*func 험수이름() -> Void {
    함수구현부
 return
 }*/

func hello() -> Void { //void 생략가능
    print("hello")
}

//함수의 호출

sum(a: 3, b: 5)
printMyName(name: "suho")
maximumIntegerValue()
hello()

//: [Next](@next)
