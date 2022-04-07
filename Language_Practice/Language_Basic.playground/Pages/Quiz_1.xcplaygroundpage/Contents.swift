//: [Previous](@previous)

import Foundation

/*1번 문제 : 물건의 가격과 갯수를 입력 받아 총 판매액 리턴하는 프로그램을 작성하세요.
var price: Int = 3000
var cnt: Int = 2
var sum: Int

func getTotalPrice() {
  price+cnt
    print(price*cnt)
}
getTotalPrice()
*/

/*2번 문제 :1번을 응용하여, 판매 수익을 출력하는 프로그램을 작성하시오. (판매 수익은 물건의 가격의 10% 입니다.)
var price: Int = 1500
var cnt: Int = 2

func getAdvantage() -> Int{
  
    return (price*cnt/10)
}
print(getAdvantage())
 */

/*3번: Inch로 된 제품의 크기를 입력 받아 cm로 출력하는 프로그램을 작성하세요. ( 1inch = 2.54cm )
입력은 함수의 인자(inch: Double)로 받습니다.
 
var Inch: Double = 10
var Cm: Double = 2.54

func inchToCm() -> Double{
    return Inch*Cm
}
print(inchToCm())
 */

/* 4번:  학생의 국어, 수학, 영어, 과학 총 4과목의 성적이 주어진다.
    학생의 이름과 평균을 리턴하는 함수를 작성하세요.
    <예시>
    국어: 30
    수학: 45
    영어: 88
    과학: 92
    학생이름: 김철수
 
    -> 결과: 김철수 학생의 평균 점수는 63.75점입니다.
 
 

var Kor:  Double = 30
var Math:  Double = 45
var Eng:  Double = 88
var Sic:  Double = 92
var Student: String = "김철수"

func getAverage() {
    print(Student,"학생의 평균 점수는", (Kor+Math+Eng+Sic)/4, "점입니다.")
}

getAverage()
*/
 

/*5번 -> 아얘 모르겠음 
 학생의 이름과 학번이 작성된 출석부(studentList)가 있습니다.
교실에는 5명의 학생이 있고, 해당학생이 우리반 학생인지 확인하려고 합니다.
우리반 학생이라면 true를, 아니라면 false를 리턴하는 함수를 작성하세요.*/

var studentList: [String : Int] = [
      "홍길동" : 101001,
      "이영희" : 101002,
      "김철수" : 101003,
      "김김이" : 101004,
      "박영수" : 101005
]

var Student: String = "고길동"
/*(5-1번) + 우리 반에 전학생이 들어왔습니다. 이름은 "최수영", 학번은 101006 입니다. 출석부에 추가해주세요
studentList.append("최수영" : 102206)
print(studentList)
 (5-2번)  + "홍길동"이 전학을 가게 되었어요. 출석부에서 "홍길동"을 지워주세요!
studentList.remove("홍길동" : 101001)
(5-3)번 + "김김이"의 학번을 출력해주세요.
print(studentList[4])*/

 
//: [Next](@next)
