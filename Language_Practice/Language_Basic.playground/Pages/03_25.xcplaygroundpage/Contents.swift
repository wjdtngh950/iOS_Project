//: [Previous](@previous)

import Foundation

/*
 - 카멜케이스 (intValue)
  - 구조체, 클래스, 파일명을 지을 때 -> IntValue
  - 함수명, 변수명, 상수명 -> intValue
 - 스네이크케이스 (int_value)
 */

// 기본 데이터타입
//int ,double, float, bool, string, character
//1..<4 //123
//1...4//1234
//변수 변수명: 타입명 = 초기값
//상수 상수명: 타입명 = 초기값

// 데이터 타입별로 자주 사용하는 메소드

//정수 타입추론! -> 가능하면 생략하지 말고 데이터타입 기재할 것! 특히 string과 char 의 구분의 문제도 있음!
var intValue: Int = 3 //
var doubleValue: Double = 3.3
var value = 3 //Int인지 double인지 모를테니 꼭 데이터 타입을 명시해 줄 것//명시를 안했다면 옵션을 누르고 확인 하면 xcode가 추론한 데이터타입을 확인 할 수 있음

intValue.negate() // -intValue ->정수를 음수로 만들어주는 메서드 // 메서드를 잘 모르면 옵션키로 확인 가능!
doubleValue.negate()
doubleValue.negate()

//bool
//flag
var boolValue: Bool = false
boolValue.toggle() //이걸 대부분 많이 씀! 이렇게하면 false를 true로 바꿔줌

// string
var stringValue: String = "Hello"

// """ """
let json = """
{
data: {
}
}
""" // 큰따옴표 세개 사이에 써줘야 하고 따로 써줘야함 붙이면 안됨! 이렇게 긴 문장을 문자열 처리

let emoji = "im suho🧑‍💻"
for char1 in emoji {
    print(char1)
}



stringValue.forEach { char in stringValue
    print(char)
} //일반 for 문보다 이게 성능이 좀 더좋음

for elem in stringValue{
    print(elem)
}





//컬렉션 타입
//array, set, dictionary
//array : 순서가 있다 -> index 값을 통해서 내부 값에 접근할 수 있다, 중복가능![1,2,3,1,2]
//set : 중복이 없다 -> 각각의 값이 유일하다, 순서가 없다 [1,2,3,1,2] -> [3,2,1]이나 [1,3,2] 이런식으로 중복없이 랜덤으로 출력됨
//dictionary : 순서가 없다. key, value가 하나의 쌍으로 존재 -> key값에 대한 value를 가져오는 방식 -> key나 value 둘 중 하나는 꼭 알아야함
//물론 정렬을 통해서 순서를 만들어 줄 수 있다. 오름차순이나 내림차순으로 그러나 set는 보장 할 수는 없음 ex)위에서 정렬했는데 아래서 정렬이 안될 수도 있음

var arrayValue: [Int] = [1, 2, 3] //실제 배열은 이런식으로 사용하는게 99%
print(arrayValue)
arrayValue.append(4) //원소추가
print(arrayValue)
arrayValue.insert(5, at: 2) // 특정 원소를 특정 자리에 넣기 (넣어주고 싶은 원소, at: 넣고싶은 자리)
print(arrayValue)
arrayValue.remove(at: 3) //특정 자리의 원소를 삭제 (at: 특정 자리)
print(arrayValue)
let reversedArray = arrayValue.reversed() // 원소들을 뒤집는것 
print(arrayValue)
arrayValue.removeAll()//그냥 싹다 지워버리고 싶다! //검색 개발 할때 사용!
print(arrayValue)



//타입별로 자주 사용하는 메소드들

//반복문

//조건문

//: [Next](@next)
