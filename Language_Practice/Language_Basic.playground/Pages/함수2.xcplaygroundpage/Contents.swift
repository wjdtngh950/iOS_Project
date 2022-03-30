//: [Previous](@previous)

import Foundation

// 매개변수 기본값
// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋음
/*func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수 타입2 = 매개변수 기본값 ...) -> 반환타입 {
    함수 구현부
    return 반환값
}*/

func greeting(friend: String, me: String = "suho"){
    print("hello \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생략 할 수 있습니다
greeting(friend: "seungho") //hello seungho! I'm suho
greeting(friend: "bank", me: "salad") //hello bank! I'm salad

//전달인자 레이블
/*전달인자 레이블은 함수를 호출 할때 매개변수의 역할을 좀 더 명확하게 하거나
 함수 사용자의 입장에서 표현하고자 할 때 사용합니다*/
/*func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수 타입 ...) -> 반환타입 {
    함수 구현부
    return 반환값
}*/

//함수 내부에서 전달인자를 사용 할 때에는 매개변수 이름을 사용함
func greeting2(to friend: String, from me: String) -> Void {
    print("hello \(friend)! I'm \(me)")
}

//함수를 호출 할때에는 전달인자를 사용해야함!
greeting2(to: "seungho", from: "suho") //hello seungho! I'm suho

// 가변매개변수
/*전달 받을 값의 개수를 알기 어려울 때 사용 가능
 가변 매개변수는 함수당 하나만 가질 수 있음
 */
/*func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입{
    함수구현부
    return
}*/
func sayHelloToFriends(me: String, friends: String...) -> String { //친구가 몇명이되어도 상관없다!
    return "Hello \(friends) i'm \(me)"
}
print(sayHelloToFriends(me: "suho", friends: "seungho", "bank", "salad"))
//Hello ["seungho", "bank", "salad"] i'm suho //그리고 me: String = "suho"를 해주면 me도 생략가능

//위에 적힌 함수들은 모두 섞어서 사용가능!
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
// 데이터 타입으로서의 함수

/*스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고 매개변수를 통해 전달 할 수도 있음*/

//함수의 타입 표현
//반환 타입을 생략 할 수 없음
//(매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting2(to:from:)
someFunction("suho", "seungho") //hello suho! I'm seungho

someFunction = greeting(friend:me:)
someFunction("suho", "seungho") //hello suho! I'm seungho

//타입이 다른 함수는 할당 할 수 없음
//someFunction = sayHelloFriedns(me: friends:)




//: [Next](@next)
