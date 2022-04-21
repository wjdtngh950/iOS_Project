//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by 정수호 on 2022/04/05.
//

import UIKit
/*
 1. 스토리보드로 화면구성하기
 2. 코드로 커스텀 UI 만들기
 3. nib, xib 사용하기
 */
class FirstViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel! //Outlet 변수 연결 (의미는없음 그냥 대명사)
    @IBOutlet weak var contentTextField: UITextField!
    override func viewDidLoad() {//앱실행시 항상 제일 먼저 실행되는 함수 !
        super.viewDidLoad() // super  부모가 가지고 있는 viewdidLoad() 함수 내의 코드를 똑같이 가져와서 실행
        /*
         viewDidload =  앱, 웹 -> view 가 생명주기를 갖고 있음
         메모리에 로드된 후 사용자에게 보여지기 직전에 실행되는 함수
         즉, 사용자에게 보여주고 싶은 데이터를 넣어주거나, 초기값을 넣어줄 때
         -> 딱 한번만 실행됨
         */
        //1. 스토리보드에 있는 모양대로 화면이 그려짐
        
        //2.viewDidLoad라는 함수 안에 있는 내용이 실행됨
        configureLable()
        configureTextField()
        
    }
    
    func configureLable(){
        titleLabel.text = "버튼을 눌러주세요"
        titleLabel.backgroundColor = .red
        titleLabel.numberOfLines = 3 // 버튼을 눌렀을 때 텍스트를 몇 줄 까지 출력할 건지? // 0을 넣어주면 제한 없이 전부 확인
    }
    
    func configureTextField(){
        contentTextField.placeholder = "이것은 플레이스홀더"
    }
    
    //3. 버튼을 누르면, 버튼 안에 있는 내용이 실행됨
    @IBAction func buttonClicked(_ sender: UIButton) {
        titleLabel.text = contentTextField.text
        
    }
}
