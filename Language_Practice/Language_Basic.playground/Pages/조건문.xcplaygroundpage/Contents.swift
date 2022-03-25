//: [Previous](@previous)

import Foundation

/*if 조건식 {
 실행 할 구문
 }*/

var age = 12

if age < 19 {
    print("미성년자 입니다")
}

/* if 조건식{
 조건식이 만족하면 해당 구문 실행
 } else {
 만족하지 않으면 해당 구문 실행
 }*/

age = 30
if age < 19 {
    print("미성년자")
}
else {
    print("성년자")
}

let animal = "cat"

if animal == "dog"{
    print("강아지")
}
else if animal == "cat"{
    print("고양이")
}
else {
    print("사람")
}

/*switch 비교대상 {
case 패턴1:
 //패턴 1 일치할 때 실행됨
 case 패턴2:
  //패턴 2 일치할 때 실행됨
 case 패턴3:
  //패턴 3 일치할 때 실행됨
 default:
 // 아무것도 없을 때 실행
}*/

let color = "green"

switch color{
case "blue":
    print("파랑")
case "green":
    print("초록")
default:
    print("모름")
}
 

let temperature = 30

switch temperature{
case -20...9:
    print("겨울")
case 10...14:
    print("가을")
case 26...35:
    print("여름")
default:
    print("봄")
}
 
 
 

//: [Next](@next)
