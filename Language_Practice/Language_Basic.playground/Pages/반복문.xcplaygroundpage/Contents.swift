//: [Previous](@previous)

import Foundation

/*for 루프상수 in 순회대상{
 순회 대상은 array, dictionary, set도 사용가능하다
 // 실행할 구문
 }*/

for i in 1...4{
    print(i)
}

let array = [1,2,3,4,5]

for i in array {
    print(i)
}

/* while 조건식{
 실행할 구문
 }*/

var number = 5
while number < 10 {
    number+=1
}
number


/*repeat{
 실행할 구문
 } while 조건식*/ //아무리 안맞아도 '한번은' 실행함 그래서 아래와 같은 현상이 가능
var x = 6

repeat {
    x+=2
} while x < 5

print(x)
//: [Next](@next)
