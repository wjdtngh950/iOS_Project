//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by 정수호 on 2022/04/05.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel! //Outlet 변수 연결 (의미는없음 그냥 대명사)
    override func viewDidLoad() {//앱실행시 항상 제일 먼저 실행되는 함수 !
        super.viewDidLoad()
        //1. 스토리보드에 있는 모양대로 화면이 그려짐
        
        //2.viewDidLoad라는 함수 안에 있는 내용이 실행됨
        titleLabel.text = "버튼을 눌러주세요"
        titleLabel.backgroundColor = .red

    }
    //3. 버튼을 누르면, 버튼 안에 있는 내용이 실행됨
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("button")
        titleLabel.text = "안녕"
        titleLabel.backgroundColor = .cyan
    }
    

}

