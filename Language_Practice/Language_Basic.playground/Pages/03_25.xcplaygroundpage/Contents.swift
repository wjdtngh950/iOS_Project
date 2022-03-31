//: [Previous](@previous)

import Foundation
import CoreFoundation

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





//MARK: - 컬렉션 타입
//array, set, dictionary
//array : 순서가 있다 -> index 값을 통해서 내부 값에 접근할 수 있다, 중복가능![1,2,3,1,2]
//set : 중복이 없다 -> 각각의 값이 유일하다, 순서가 없다 [1,2,3,1,2] -> [3,2,1]이나 [1,3,2] 이런식으로 중복없이 랜덤으로 출력됨
//dictionary : 순서가 없다. key, value가 하나의 쌍으로 존재 -> key값에 대한 value를 가져오는 방식 -> key나 value 둘 중 하나는 꼭 알아야함
//물론 정렬을 통해서 순서를 만들어 줄 수 있다. 오름차순이나 내림차순으로 그러나 set는 보장 할 수는 없음 ex)위에서 정렬했는데 아래서 정렬이 안될 수도 있음

//array
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
//arrayValue.removeAll()//그냥 싹다 지워버리고 싶다! //검색 개발 할때 사용!
print(arrayValue)


//MARK:  set
var setValue: Set = [1, 2, 3]  //순서가 없으니 랜덤!
//교집합과 여집합에 사용
var firstSet: Set = [2, 4, 6, 8, 10]
var secondSet: Set = [4, 8, 12, 16]
// 집합연산
// 교집합(intersection)
firstSet.intersection(secondSet)
// 여집합
firstSet.symmetricDifference(secondSet)
// 합집합
firstSet.union(secondSet)
//차집합
firstSet.subtract(secondSet)

//MARK:  자주 쓰는 메서드
setValue.insert(3) //set는 중복을 허락하지 않기 때문에, 중복된 값을 추가하려고 하는 경우 inserted가 false가 나옴
setValue.insert(4)
setValue.contains(3) //set 안에 있는지 없는지 확인하는 메서드 존재 > true, 없으면 > false
//setValue.remove(at: 1) //이건 안됨 왜냐하면 set는 인덱스가 랜덤이기 때문에
setValue.remove(3) // 이렇게 특정원소를 알때 지울 수 있음
setValue.removeAll() //전체삭제

//MARK: - Dictionary //순서보장안됨
//전화번호부는 이름 : 전화번호
var phoneBook: [String : String] = [:] //초기화// 키값은 유일해야하기 때문에 중복이되면 최근것으로 바뀜
//딕셔너리명[키값] = 벨류값
phoneBook["정수호"] = "010-5821-0000"
phoneBook["정승호"] = "010-0171-0000"
print(phoneBook) //이렇게하면 전부출력
print(phoneBook["정수호"]) // 존재하면 옵셔널 출력
print(phoneBook["뱅크"]) // 존재하지 않으면 닐 출력
phoneBook.updateValue("010-9999-1111", forKey: "정승호") // 특정값을 변경
print(phoneBook)
phoneBook.updateValue("010-2222-3333", forKey: "샐러드") // 없다면 추가가됨
print(phoneBook)
phoneBook.removeValue(forKey: "정승호") //키값을 삭제, 만약에 키값이 없으면 닐 출력
print(phoneBook)

// MARK: - Tuple
// 전송한 데이터(int,string) + 전송 성공여부(true,false)
// 위처럼 서로 다른 타입을 하나로 묶어주는 자료형
// 순서가 있음
// 한번 선언하면 수정과 삭제가 불가능
var tuple: (Int, String) = (404, "Not Found")
print(tuple)
print(tuple.0) //404
print(tuple.1) // "Not Found"
var tuple2: (Int, String, Bool) = (404, "Not Found", false)
print(tuple2)
print(tuple2.0) //404
print(tuple2.1) // "Not Found"
print(tuple2.2)//false


//MARK: - 반복문 & 조건문 -
//조건문
//특정 조건에 대한 분기처리. -> 조건 성립할 때와 아닐 때를 나누어 코드를 수행하도록 도와줌

/*if 조건문 {
    //조건문이 성립할 때
} else if 조건문2{
    //조건2 성립 할 때
} else {
    //조건문이 성립하지 않을 때
}*/

var gender: String = "남"

if gender == "남" {
    print("남자입니다")
} else if gender == "여" {
    print("여자입니다")
} else{
    print("성별을 선택하지 않았습니다")
}

var flag: Bool = true
if flag { // (flag == ture) == true // flag true 라고 해도되지만 두번 검사해야해서 비효율적임
    print("참")
}else if !flag { // (flag == ture) == true
    print("거짓")
}

// if else 와 switch
//switch문이 조건이 많을 때 유리함 !
var score: Int = 88

switch score{
case 0..<20:
    print("F")
case 20..<60:
    print("C")
case 60..<80:
    print("B")
case 80..<100:
    print("A")
default: print("잘못된 점수입니다") // default를 꼭 써줄것
}
//중첩도 가능함 if안에 if문!

//반복문
//for
let array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenArray: [Int] = []
var oddArray: [Int] = []
//인덱스로 접근하는 방법
for i in 0..<array.count{
    print(array[i])
}


for i in 0..<array.count{

    if array[i] % 2 == 0{
        evenArray.append(array[i])
    } else {
        oddArray.append(array[i])
    }
}


//상수이름을 정해줘서 접근하는 방법
for num in array {
    if num % 2 == 0{
        evenArray.append(num)
    }
    else {
        oddArray.append(num)
    }
}


print("짝수", evenArray)
print("홀수", oddArray)
//함수
/* - 프로그램을 실행 할 때 반복되는 코드 -> 하나의 묶음으로 만들고 재사용하기 위해 사용
 - 하나의 큰 묶음 -> 작은 묶음으로 쪼개주기 위해서 (분리)*/
 //4가지
 //1. 인자 x, 리턴 값 X
func hello_1(){
    print("hello_1")
}
hello_1()

//2. 인자 X, 리턴 값 O
func hello_2() -> String {
    return "hello_2~"
}
print(hello_2())

//3. 인자 O, 리턴 값 X
func hello_3(name: String) { //-> Void 는 생략
    print("\(name), hi!")
}
hello_3(name: "suho")
//4. 인자 O, 리턴 값 O
func hello_4(name: String) -> String {
    return "\(name), nice!!!"
}
print(hello_4(name: "SuhO"))

//MARK: - 팁
//자동정렬 = 컨트롤 + i


//: [Next](@next)
